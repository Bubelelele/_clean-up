using UnityEngine;

public class NorthWallMovementController : MonoBehaviour
{
    public GameObject player, lane0, lane1, lane2, lane3, lane4, northEastCorner, northWestCorner;
    public Vector3[] lane;
    public Vector3 target;

    private Vector3 corner, leftLane, rightLane;
    private string currentWall = "";
    private bool moving = false;

    private Vector2 startTouchPosition;
    private Vector2 currentPosition;
    
    private Vector3 fp;   //First touch position
    private Vector3 lp;   //Last touch position
    private float dragDistance;  //minimum distance for a swipe to be registered

    // Start is called before the first frame update
    void Start()
    {

        dragDistance = Screen.width * 10 / 100; //dragDistance is 10% width of the screen

        // Creates an array of all lane positions of the north wall.
        lane = new[]
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
                    corner = northEastCorner.transform.position;
                    leftLane = corner;
                    rightLane = lane[i + 1];
                }
                else if (player.transform.position == lane[4])
                {
                    corner = northWestCorner.transform.position;
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
        if (Input.GetKeyDown(KeyCode.A) && !moving && currentWall == "north")
        {
            target = leftLane;
            moving = true;

            if (target == northEastCorner.transform.position)
            {
                northEastCorner.GetComponent<NorthEastCornerRotationController>().rotating = true;
            }
        }
        if (Input.GetKeyDown(KeyCode.D) && !moving && currentWall == "north")
        {
            target = rightLane;
            moving = true;

            if (target == northWestCorner.transform.position)
            {
                northWestCorner.GetComponent<NorthWestCornerRotationController>().rotating = true;
            }
        }
        // Sets the target for the player based on the pressed key and starts movement / rotation based on the target.

        if (Input.touchCount == 1) // user is touching the screen with a single touch
        {
            Touch touch = Input.GetTouch(0); // get the touch
            if (touch.phase == TouchPhase.Began) //check for the first touch
            {
                fp = touch.position;
                lp = touch.position;
            }
            if (touch.phase == TouchPhase.Ended && !moving && currentWall == "north")
            {   //It's a tap as the drag distance is less than 20% of the screen height
                CleaningAction.startedCleaning = true;
                Debug.Log("North Tap");
            }
            else if (touch.phase == TouchPhase.Moved) //check if the finger is removed from the screen
            {
                lp = touch.position;  //last touch position. Ommitted if you use list
 
                //Check if drag distance is greater than 20% of the screen height
                if (Mathf.Abs(lp.x - fp.x) > dragDistance && !moving || Mathf.Abs(lp.y - fp.y) > dragDistance && !moving)
                {          
                    if (Mathf.Abs(lp.x - fp.x) > Mathf.Abs(lp.y - fp.y) && !moving && currentWall == "north")
                    {   
                        if ((lp.x > fp.x))  
                        {   //Right swipe
                            target = rightLane;
                            moving = true;
                            if (target == northWestCorner.transform.position)
                            {
                                northWestCorner.GetComponent<NorthWestCornerRotationController>().rotating = true;
                            }
                            Debug.Log("Right Swipe");
                        }
                        else
                        {   //Left swipe
                            target = leftLane;
                            moving = true;
                            if (target == northEastCorner.transform.position)
                            {
                                northEastCorner.GetComponent<NorthEastCornerRotationController>().rotating = true;
                            }
                            Debug.Log("Left Swipe");
                        }
                    }
                }
            }
        }
        // Moves the player to the target position on the north wall.
        if (moving && target != corner)
        {
            player.transform.position = Vector3.MoveTowards(player.transform.position, target, 7f * Time.smoothDeltaTime * MasterTime.masterTime);
        }
        }
        
    } 
}