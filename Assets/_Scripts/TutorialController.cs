using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialController : MonoBehaviour
{
   // public SouthChairSpawner southChairSpawner;
    public static bool tutorialComplete = false, canClean = false, canMove = false, canRotate = false, hasRotated = false;
    private bool hasCleaned = false, hasMoved = false, lineTimerActivate = false, hasRotatedTut = false;
    private float lineTimer = 5f;
    private int lineTrigger = 0;

    // Start is called before the first frame update
 /*   void Start()
    {
        southChairSpawner.SpawnLine();
    } */

    // Update is called once per frame


    void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Dirt") && hasCleaned == false)
        {
            MasterTime.masterTime = 0f;
            MasterTime.tutorialTime = 0f;
            canClean = true;
        }
        
        if (col.CompareTag("KillingObstacle") && hasMoved == false)
        {
            MasterTime.masterTime = 0f;
            MasterTime.tutorialTime = 0f;
            canClean = false;
            canMove = true;
        }

        if (col.CompareTag("Line") && hasRotated == false)
        {
            lineTimerActivate = true;
            MasterTime.masterTime = 0f;
            MasterTime.tutorialTime = 0f;
            canRotate = true;
            hasRotatedTut = true;
            lineTrigger++;
            Destroy(col.gameObject);
        }

        if (col.CompareTag("BleachLine"))
        {
            MasterTime.tutorialTime = 0f;
        }
    }

        void Update()
    {
        if (hasRotated == true && hasRotatedTut == true)
        {
            lineTrigger = 0;
            MasterTime.tutorialTime = 1f;
            canRotate = false;
            hasRotatedTut = false;
        }
        if (canClean == true && CleaningAction.startedCleaning == true && hasCleaned == false)
        {
            MasterTime.masterTime = 1f;
            MasterTime.tutorialTime = 1f;
            hasCleaned = true;
        }

        if (canMove == true && SouthWallMovementController.tutorialMoving == true && hasMoved == false)
        {
            MasterTime.masterTime = 1f;
            MasterTime.tutorialTime = 1f;
            canClean = true;
            hasMoved = true;
        }

        if (lineTimerActivate == true)
        {
            lineTimer -= Time.deltaTime;
        }
        if (lineTimer < 0)
        {
            lineTimerActivate = false;
            MasterTime.masterTime = 1f;
            MasterTime.tutorialTime = 1f;
            lineTimer = 1000f;
        }
        if (lineTrigger == 2)
        {
            MasterTime.tutorialTime = 0f;
            MasterTime.masterTime = 1f;
        }
    }
}
