using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class HoldAndDrag : MonoBehaviour, IDragHandler
{
    private RectTransform rectTransform;
    private float timer = 1.5f;
    private bool timerActivate = false;
    private float moveTimer = 0.5f;
    private Vector3 startPosition;
    private GameObject obstacleCanvas;
    public GameObject Player;

    private void Start()
    {
        rectTransform = GetComponent<RectTransform>();
        startPosition = transform.position;
        obstacleCanvas = GameObject.Find("ObstacleCanvas");
    }

    public void OnDrag(PointerEventData eventData)
    {
        rectTransform.anchoredPosition += eventData.delta;
        timerActivate = true;
    }

    private void Update()
    {
        if (timerActivate == true)
        {
            timer -= Time.deltaTime;
            moveTimer -= Time.deltaTime;
            if (moveTimer < 0)
            {
                Player.GetComponent<CapsuleCollider>().enabled = true;
                PaperMoving.onScreen = false;
            }
        }
        if (timer < 0)
        {
            PaperMoving.onScreen = false;
            obstacleCanvas.transform.GetChild(0).gameObject.SetActive(false);
            transform.position = startPosition;
            timerActivate = false;
            timer = 1.5f;
            moveTimer = 0.5f;
        }

        if (PaperMoving.onScreen == true)
        {
        //    Time.timeScale /= 2; //Produces an interesting result where it acts more as a slowdown. It seems to resume to the previous speed afterwards but I don't know for sure. Left in for testing purposes.
            Player.GetComponent<CapsuleCollider>().enabled = false;
        }

        if (AnimationManager.isDead)
        {
            PaperMoving.onScreen = false;
        }
    }
}
