using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerRotation : MonoBehaviour
{
    float rotatePlayer;

    // Start is called before the first frame update
    void Start()
    {
        rotatePlayer = Random.Range(0f, 360f);
    }

    // Update is called once per frame
    void Update()
    {
        
        if (AnimationManager.isDead == true && AnimationManager.whichDeath == 0)
        {
            transform.Rotate(0f, 0f, rotatePlayer * Time.deltaTime);
            //transform.position = new Vector3(0f, 2f * Time.deltaTime, 0f);
        }
    }
}
