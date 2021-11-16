using UnityEngine;

public class SouthWestCornerRotationController : MonoBehaviour
{
    public GameObject southWall, westWall, player;
    public bool rotating = false;

    private string currentWall = "";

    // Update is called once per frame
    void Update()
    {
        currentWall = player.GetComponent<WallChecker>().wall;
        
        // Rotates the player from the west wall to the south wall.
        if (rotating && westWall.GetComponent<WestWallMovementController>().target == transform.position && currentWall == "west")
        {
            if (player.transform.eulerAngles.y == 90 || player.transform.eulerAngles.y < 90)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * -Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 0f, 0f);
                player.transform.position = southWall.GetComponent<SouthWallMovementController>().lane[0];
                rotating = false;
            }
        }

        // Rotates the player from the south wall to the west wall.
        if (rotating && southWall.GetComponent<SouthWallMovementController>().target == transform.position && currentWall == "south")
        {
            if (player.transform.eulerAngles.y == 0 || player.transform.eulerAngles.y < 90)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 90f, 0f);
                player.transform.position = westWall.GetComponent<WestWallMovementController>().lane[4];
                rotating = false;
            }
        }
    }
}