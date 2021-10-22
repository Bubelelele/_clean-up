using UnityEngine;

public class WallChecker : MonoBehaviour
{
    public GameObject southWall, eastWall, northWall, westWall;
    public string wall;

    // Update is called once per frame
    void Update()
    {
        // Checks which wall the player is on.
        // The position of the player must match the position of one of the respective wall's lanes.
        for (int i = 0; i < 5; i++)
        {
            if (transform.position == southWall.GetComponent<SouthWallMovementController>().lane[i])
            {
                wall = "south";
            }
            if (transform.position == eastWall.GetComponent<EastWallMovementController>().lane[i])
            {
                wall = "east";
            }
            if (transform.position == northWall.GetComponent<NorthWallMovementController>().lane[i])
            {
                wall = "north";
            }
            if (transform.position == westWall.GetComponent<WestWallMovementController>().lane[i])
            {
                wall = "west";
            }
        }
    }
}