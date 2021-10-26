using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BirdMovingWest : MonoBehaviour
{
    public float dirtSpeed = -1.5f;
    public RawImage Indicator;
    private GameObject player;
    private Vector3 startPosition;
    float randomSpeed;
    float indicatorTimer;
    private string birdWall = "west";
    private string playerWall;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("Player");
        startPosition = transform.position;
        randomSpeed = Random.Range(3.3f, 5.05f);
        indicatorTimer = 2 / randomSpeed;
    }

    // Update is called once per frame
    void Update()
    {
        playerWall = player.GetComponent<WallChecker>().wall;

        if (playerWall == birdWall)
        {
            indicatorTimer -= Time.smoothDeltaTime;
            if (indicatorTimer > 0)
            {
                Indicator.gameObject.SetActive(true);
                Indicator.CrossFadeAlpha(0f, indicatorTimer, false);
            }
            else if (indicatorTimer < 0) { Indicator.gameObject.SetActive(false); }
        }

        Vector3 positionChange = new Vector3(0f, Time.deltaTime * dirtSpeed, Time.deltaTime * randomSpeed);
        transform.position += positionChange;

        if (gameObject.transform.position.y < -5)
        {
            Destroy(gameObject);
        }

        if (PlayerHealth.isDead)
        {
            Indicator.gameObject.SetActive(false);
        }

    }
 }
