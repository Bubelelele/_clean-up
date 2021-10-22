using UnityEngine;

public class NorthEastCornerRotationController : MonoBehaviour
{
    public GameObject northWall, eastWall, player;
    public bool rotating = false;

    private string currentWall = "";

    // Update is called once per frame
    void Update()
    {
        currentWall = player.GetComponent<WallChecker>().wall;
        
        // Rotates the player from the east wall to the north wall.
        if (rotating && eastWall.GetComponent<EastWallMovementController>().target == transform.position && currentWall == "east")
        {
            if (player.transform.rotation.eulerAngles.y == 270 || player.transform.rotation.eulerAngles.y > 180)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * -Time.smoothDeltaTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, 180f, 0f);
                player.transform.position = northWall.GetComponent<NorthWallMovementController>().lane[0];
                rotating = false;
            }
        }

        // Rotates the player from the north wall to the east wall.
        if (rotating && northWall.GetComponent<NorthWallMovementController>().target == transform.position && currentWall == "north")
        {
            if (player.transform.rotation.eulerAngles.y == 180 || player.transform.rotation.eulerAngles.y < 270)
            {
                player.transform.RotateAround(transform.position, Vector3.up, 90 * Time.smoothDeltaTime);
            }
            else
            {
                player.transform.rotation = Quaternion.Euler(0f, -90f, 0f);
                player.transform.position = eastWall.GetComponent<EastWallMovementController>().lane[4];
                rotating = false;
            }
        }
    }
}