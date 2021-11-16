using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SwitchScenes : MonoBehaviour
{
    private Vector2 startTouchPosition;
    private Vector2 currentPosition;

    // Update is called once per frame
    void Update()
    {
        if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
        {
            startTouchPosition = Input.GetTouch(0).position;
        }
        if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved)
        {
            currentPosition = Input.GetTouch(0).position;
            Vector3 Distance = currentPosition - startTouchPosition;

            if (Distance.y < -25)
            {
                ScoreController.score = 0;
                AnimationManager.isDead = false;
                MasterTime.masterTime = 1.0f;
                SceneManager.LoadScene(3);
            }
            else if (Distance.y > 25)
            {
                ScoreController.score = 0;
                AnimationManager.isDead = false;
                MasterTime.masterTime = 1.0f;
                SceneManager.LoadScene(1);
            }
        }

        if (Input.GetKeyUp(KeyCode.N))
        {
            ScoreController.score = 0;
            AnimationManager.isDead = false;
            MasterTime.masterTime = 1.0f;
            SceneManager.LoadScene(1);
        }
        else if (Input.GetKeyUp(KeyCode.B))
        {
            ScoreController.score = 0;
            AnimationManager.isDead = false;
            MasterTime.masterTime = 1.0f;
            SceneManager.LoadScene(3);
        }
    }
}
