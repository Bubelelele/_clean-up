using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PaperMoving : MonoBehaviour
{
    public static bool onScreen = false;
    public float paperSpeed = -1.5f;
    private GameObject obstacleCanvas;
    private Vector3 startPosition;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
        obstacleCanvas = GameObject.Find("ObstacleCanvas");
    }

    private void OnTriggerEnter(Collider hit)
    {
        if (hit.CompareTag("Player"))
        {
            onScreen = true;
            obstacleCanvas.transform.GetChild(0).gameObject.SetActive(true);
            GetComponent<BoxCollider>().enabled = false;
            Destroy(gameObject);
        }
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 positionChange = new Vector3(0f, Time.deltaTime * paperSpeed, 0f);
        transform.position += positionChange;
        transform.Rotate(Random.Range(0F, 360f) * Time.deltaTime, Random.Range(0F, 360f) * Time.deltaTime, Random.Range(0F, 360f) * Time.deltaTime);

        if (gameObject.transform.position.y < -5)
        {
            Destroy(gameObject);
        }

        if (AnimationManager.isDead == true)
        {
            obstacleCanvas.transform.GetChild(0).gameObject.SetActive(false);
        }
    }
}
