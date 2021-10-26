using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class HoldAndDrag : MonoBehaviour, IDragHandler
{
    private RectTransform rectTransform;
    private float timer = 1.5f;
    private bool timerActivate = false;
    private Vector3 startPosition;
    private GameObject obstacleCanvas;

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
        }
        if (timer < 0)
        {
            obstacleCanvas.transform.GetChild(0).gameObject.SetActive(false);
            transform.position = startPosition;
            timerActivate = false;
            timer = 1.5f;
        }
    }
}
