using UnityEngine;

public class NorthWestCornerRotationController : MonoBehaviour
{
    public GameObject northWall, westWall, player;
    public bool rotating = false;

    private string currentWall = "";

    // Update is called once per frame
    void Update()
    {
        currentWall = player.GetComponent<WallChecker>().wall;
        
        // Rotates the player from the north wall to the west wall.
        if (rotating && northWall.GetComponent<NorthWallMovementController>().target == transform.position && currentWall == "north")
        {
            if (player.transform.rotation.eulerAngles.y == 180 || player.transform.rotation.eulerAngles.y > 90)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * -Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 90f, 0f);
                player.transform.position = westWall.GetComponent<WestWallMovementController>().lane[0];
                rotating = false;
            }
        }

        // Rotates the player from the west wall to the north wall.
        if (rotating && westWall.GetComponent<WestWallMovementController>().target == transform.position && currentWall == "west")
        {
            if (player.transform.rotation.eulerAngles.y == 90 || player.transform.rotation.eulerAngles.y < 180)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * Time.smoothDeltaTime * MasterTime.masterTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 180f, 0f);
                player.transform.position = northWall.GetComponent<NorthWallMovementController>().lane[4];
                rotating = false;
            }
        }
    }
}