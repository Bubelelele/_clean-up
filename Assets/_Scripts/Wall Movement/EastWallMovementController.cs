using UnityEngine;

public class EastWallMovementController : MonoBehaviour
{
    public GameObject player, lane0, lane1, lane2, lane3, lane4, southEastCorner, northEastCorner;
    public Vector3[] lane;
    public Vector3 target;

    private Vector3 corner, leftLane, rightLane;
    private string currentWall = "";
    private bool moving = false;

    private Vector2 startTouchPosition;
    private Vector2 currentPosition;
    
    

    public float swipeRange;
    public float tapRange;

    // Start is called before the first frame update
    void Start()
    {
        // Creates an array of all lane positions of the east wall.
        lane = new []
        {
            lane0.transform.position,
            lane1.transform.position,
            lane2.transform.position,
            lane3.transform.position,
            lane4.transform.position
        };
    }

    // Update is called once per frame
    void Update()
    {
        swipeRange = 25f;

        currentWall = player.GetComponent<WallChecker>().wall;

        // Stores positions of lanes / corners next to the player into variables and stops any movement.
        if (!PaperMoving.onScreen)
        {
            for (int i = 0; i < 5; i++)
        {
            if (player.transform.position == lane[i])
            {
                if (player.transform.position == lane[0])
                {
                    corner = southEastCorner.transform.position;
                    leftLane = corner;
                    rightLane = lane[i + 1];
                }
                else if (player.transform.position == lane[4])
                {
                    corner = northEastCorner.transform.position;
                    leftLane = lane[i - 1];
                    rightLane = corner;
                }
                else
                {
                    leftLane = lane[i - 1];
                    rightLane = lane[i + 1];
                }

                moving = false;
            }
        }
        if (Input.GetKeyDown(KeyCode.A) && !moving && currentWall == "east")
        {
            target = leftLane;
            moving = true;

            if (target == southEastCorner.transform.position)
            {
                southEastCorner.GetComponent<SouthEastCornerRotationController>().rotating = true;
            }
        }
        if (Input.GetKeyDown(KeyCode.D) && !moving && currentWall == "east")
        {
            target = rightLane;
            moving = true;

            if (target == northEastCorner.transform.position)
            {
                northEastCorner.GetComponent<NorthEastCornerRotationController>().rotating = true;
            }
        }
        // Sets the target for the player based on the pressed key and starts movement / rotation based on the target.
        if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
        {
            startTouchPosition = Input.GetTouch(0).position;
        }
        if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved && !moving && currentWall == "east")
        {
            currentPosition = Input.GetTouch(0).position;
            Vector3 Distance = currentPosition - startTouchPosition;

            if (Distance.x < -swipeRange)
            {
                target = leftLane;
                moving = true;
                if (target == southEastCorner.transform.position)
                {
                    southEastCorner.GetComponent<SouthEastCornerRotationController>().rotating = true;
                }
            }
            else if (Distance.x > swipeRange)
            {
                target = rightLane;
                moving = true;

                if (target == northEastCorner.transform.position)
                {
                    northEastCorner.GetComponent<NorthEastCornerRotationController>().rotating = true;
                }
            }


        }

        // Moves the player to the target position on the east wall.
        if (moving && target != corner)
        {
            player.transform.position = Vector3.MoveTowards(player.transform.position, target, 7f * Time.smoothDeltaTime * MasterTime.masterTime);


        }
        }
        
    }        
}