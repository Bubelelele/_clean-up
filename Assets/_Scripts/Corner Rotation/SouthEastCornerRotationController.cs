using UnityEngine;

public class SouthEastCornerRotationController : MonoBehaviour
{
    public GameObject southWall, eastWall, player;
    public bool rotating = false;

    private string currentWall = "";

    // Update is called once per frame
    void Update()
    {
        currentWall = player.GetComponent<WallChecker>().wall;
        
        // Rotates the player from the south wall to the east wall.
        if (rotating && southWall.GetComponent<SouthWallMovementController>().target == transform.position && currentWall == "south")
        {
            if (player.transform.eulerAngles.y == 0 || player.transform.eulerAngles.y > 270)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * -Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, -90f, 0f);
                player.transform.position = eastWall.GetComponent<EastWallMovementController>().lane[0];
                rotating = false;
            }
        }

        // Rotates the player from the east wall to the south wall.
        if (rotating && eastWall.GetComponent<EastWallMovementController>().target == transform.position && currentWall == "east")
        {
            if (player.transform.eulerAngles.y == 270 || player.transform.eulerAngles.y > 270)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 0f, 0f);
                player.transform.position = southWall.GetComponent<SouthWallMovementController>().lane[4];
                rotating = false;
            }
        }
    }
}