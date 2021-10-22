using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BirdMovingNorth : MonoBehaviour
{
    public float dirtSpeed = -1.5f;
<<<<<<< Updated upstream
    public RawImage Indicator;
=======
    public Text Indicator;
>>>>>>> Stashed changes
    private GameObject player;
    private Vector3 startPosition;
    float randomSpeed;
    float indicatorTimer;
    private string birdWall = "north";
    private string playerWall;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("Player");
        startPosition = transform.position;
        randomSpeed = Random.Range(2f, 6f);
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
<<<<<<< Updated upstream
                Indicator.CrossFadeAlpha(0f, indicatorTimer, false);
=======
>>>>>>> Stashed changes
            }
            else if (indicatorTimer < 0) { Indicator.gameObject.SetActive(false); }
        }

            Vector3 positionChange = new Vector3(Time.deltaTime * randomSpeed, Time.deltaTime * dirtSpeed, 0f);
            transform.position += positionChange;

            if (gameObject.transform.position.y < -5)
            {
                Destroy(gameObject);
            }
        }
}
