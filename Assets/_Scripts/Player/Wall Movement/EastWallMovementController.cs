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

    private Vector3 fp;   // First touch position
    private Vector3 lp;   // Last touch position
    private float dragDistance;  // Minimum distance for a swipe to be registered

    void Start()
    {

        dragDistance = Screen.width * 10 / 100; // dragDistance is 10% width of the screen

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

    void Update()
    {
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
        if (Input.touchCount == 1) // user is touching the screen with a single touch
        {
            Touch touch = Input.GetTouch(0); // get the touch
            if (touch.phase == TouchPhase.Began) // check for the first touch
            {
                fp = touch.position;
                lp = touch.position;
            }
            if (touch.phase == TouchPhase.Ended && !moving && currentWall == "east")
            {   // It's a tap as the drag distance is less than 20% of the screen height
                CleaningAction.startedCleaning = true;
                CleaningAction.loseDurability = true;
                Debug.Log("East Tap");
            }
            else if (touch.phase == TouchPhase.Moved) // check if the finger is removed from the screen
            {
                lp = touch.position;  // last touch position. Ommitted if you use list
 
                // Check if drag distance is greater than 20% of the screen height
                if (Mathf.Abs(lp.x - fp.x) > dragDistance && !moving || Mathf.Abs(lp.y - fp.y) > dragDistance && !moving)
                {          
                    if (Mathf.Abs(lp.x - fp.x) > Mathf.Abs(lp.y - fp.y) && !moving && currentWall == "east")
                    {   
                        if ((lp.x > fp.x))  
                        {   // Right swipe
                            target = rightLane;
                            moving = true;

                            if (target == northEastCorner.transform.position)
                            {
                                northEastCorner.GetComponent<NorthEastCornerRotationController>().rotating = true;
                            }
                            Debug.Log("Right Swipe");
                        }
                        else
                        {   // Left swipe
                            target = leftLane;
                            moving = true;
                            if (target == southEastCorner.transform.position)
                            {
                                southEastCorner.GetComponent<SouthEastCornerRotationController>().rotating = true;
                            }
                            Debug.Log("Left Swipe");
                        }
                    }
                }
            }
        }
            // Moves the player to the target position on the east wall.
            if (moving && target != corner)
            {
                player.transform.position = Vector3.MoveTowards(player.transform.position, target, 7f * Time.smoothDeltaTime * MasterTime.characterTime);
            }
        }
    }
}