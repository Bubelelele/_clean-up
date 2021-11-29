using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TutorialController : MonoBehaviour
{
   // public SouthChairSpawner southChairSpawner;
    public static bool tutorialComplete = false, canClean = false, canMove = false, canRotate = false, hasRotated = false;
    private bool hasCleaned = false, hasMoved = false, lineTimerActivate = false, hasRotatedTut = false, textTimerActivate = false, multiplierGotten = false;
    private float lineTimer = 5f, textTimer = 3f;
    private int lineTrigger = 0;
    public Text tutorialText;
    private string currentText = "";
    int index = 1;

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
            index = 2;
            MasterTime.masterTime = 0f;
            MasterTime.tutorialTime = 0f;
            canClean = true;
        }
        
        if (col.CompareTag("KillingObstacle") && hasMoved == false)
        {
            index = 3;
            MasterTime.masterTime = 0f;
            MasterTime.tutorialTime = 0f;
            canClean = false;
            canMove = true;
        }

        if (col.CompareTag("Line") && hasRotated == false)
        {
            index = 4;
            textTimerActivate = true;
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
            textTimerActivate = true;
            index = 6;
            MasterTime.tutorialTime = 0f;
        }
    }

        void Update()
    {
        if (textTimerActivate == true)
        {
            textTimer -= Time.deltaTime;
        }
        Debug.Log(textTimerActivate);
        Debug.Log(textTimer);

        if (textTimer < 0)
        {
            textTimerActivate = false;
            index++;
            textTimer = 3f;
        }
        if (index == 0)
        {
            tutorialText.CrossFadeAlpha(0f,0.5f,true);
        } else { tutorialText.CrossFadeAlpha(1f,0f,true); }

        if (ScoreController.score >= 100 && multiplierGotten == false)
        {
            index = 8;
            textTimerActivate = true;
            multiplierGotten = true;
            MasterTime.tutorialTime = 1f;
        }

        if (index == 9)
        {
            textTimerActivate = true;
        }

        if (index == 10)
        {
            textTimerActivate = true;
        }
        if (index == 11)
        {
            textTimerActivate = true;
        }

        if (index == 12)
        {
            SceneManager.LoadScene(1);
        }


        for (int i = 0; i < tutorialTree[index].Length; i++)
        {
            currentText = tutorialTree[index].Substring(0, i);
            tutorialText.text = currentText;
        }

        if (Input.GetKeyDown(KeyCode.J))
        {
            index--;
        }

        if (Input.GetKeyDown(KeyCode.K))
        {
            index++;
        }


        if (hasRotated == true && hasRotatedTut == true)
        {
            lineTrigger = 0;
            MasterTime.tutorialTime = 1f;
            canRotate = false;
            hasRotatedTut = false;
            index = 0;
        }
        if (canClean == true && CleaningAction.startedCleaning == true && hasCleaned == false)
        {
            MasterTime.masterTime = 1f;
            MasterTime.tutorialTime = 1f;
            hasCleaned = true;
            index = 0;
        }

        if (canMove == true && SouthWallMovementController.tutorialMoving == true && hasMoved == false)
        {
            MasterTime.masterTime = 1f;
            MasterTime.tutorialTime = 1f;
            canClean = true;
            hasMoved = true;
            index = 0;
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

    public readonly string[] tutorialTree = new string[12]
	{
        "Good job! ",
		"Welcome to Clean-Up! ",
		"Tap on the screen to clean dirt! ",
		"Swipe to the left or right to dodge obstacles. ",
		"Uh oh, this side is blocked! ",
		"Try rotating over to another side of the building! ",
		"Oh look a power-up! ",
		"Pick up the Super bleach! ",
		"That is your score multiplier. After cleaning 10 dirt it increases! ",
		"There are other power-ups and tools to be found! ",
		"But there are also more obstacles to avoid, good luck! ",
        "  ",
	};
}