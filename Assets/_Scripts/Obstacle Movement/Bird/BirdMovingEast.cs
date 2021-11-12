using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BirdMovingEast : MonoBehaviour
{
    public float dirtSpeed = -1.5f;
    public RawImage Indicator;
    private GameObject player;
    private Vector3 startPosition;
    float randomSpeed;
    static float indicatorTimer;
    private string birdWall = "east";
    private string playerWall;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("PlayerHandler");
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

            if (AnimationManager.isDead)
        {
            Indicator.gameObject.SetActive(false);
        }
    }

    public void OnTriggerEnter(Collider hit)
    {
        if (hit.CompareTag("Bucket"))
        {
            AudioController.birdImpact.Play();
            BucketPowerUp.bucketDestroyed = true;
            Destroy(gameObject);
        }
        else if (hit.CompareTag("Player"))
        {
            AudioController.birdImpact.Play();
        }
    }
}
