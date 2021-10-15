using UnityEngine;

public class SouthWallMovementController : MonoBehaviour
{
    public GameObject player, lane0, lane1, lane2, lane3, lane4, southWestCorner, southEastCorner;
    public Vector3[] lane;
    public Vector3 target;

    private Vector3 corner, leftLane, rightLane;
    private string currentWall = "";
    private bool moving = false;

    // Start is called before the first frame update
    void Start()
    {
        // Creates an array of all lane positions of the south wall.
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
        currentWall = player.GetComponent<WallChecker>().wall;

        // Stores positions of lanes / corners next to the player into variables and stops any movement.
        for (int i = 0; i < 5; i++)
        {
            if (player.transform.position == lane[i])
            {
                if (player.transform.position == lane[0])
                {
                    corner = southWestCorner.transform.position;
                    leftLane = corner;
                    rightLane = lane[i+1];
                }
                else if (player.transform.position == lane[4])
                {
                    corner = southEastCorner.transform.position;
                    leftLane = lane[i-1];
                    rightLane = corner;
                }
                else
                {
                    leftLane = lane[i-1];
                    rightLane = lane[i+1];
                }
                
                moving = false;
            }
        }

        // Sets the target for the player based on the pressed key and starts movement / rotation based on the target.
        if (Input.GetKeyDown(KeyCode.A) && !moving && currentWall == "south")
        {
            target = leftLane;
            moving = true;

            if (target == southWestCorner.transform.position)
            {
                southWestCorner.GetComponent<SouthWestCornerRotationController>().rotating = true;
            }
        }
        if (Input.GetKeyDown(KeyCode.D) && !moving && currentWall == "south")
        {
            target = rightLane;
            moving = true;

            if (target == southEastCorner.transform.position)
            {
                southEastCorner.GetComponent<SouthEastCornerRotationController>().rotating = true;
            }
        }

        // Moves the player to the target position on the south wall.
        if (moving && target != corner)
        {
            player.transform.position = Vector3.MoveTowards(player.transform.position, target, 7f * Time.smoothDeltaTime);
        }
    }
}