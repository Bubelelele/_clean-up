using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectLauncher : MonoBehaviour
{
    public GameObject SquareDirt;
    public float spawnRate = 1f;
    public int xPos;

    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("FallingDebris", 0.5f, spawnRate);
    }
    
    private void FallingDebris()
    {
        int xPos = Random.Range(1, 10);
        if (xPos % 2 == 0)
        {
            Vector3 spawnPoint = new Vector3(xPos + transform.position.x, transform.position.y, transform.position.z);
            GameObject gameObject1 = Instantiate(SquareDirt, spawnPoint, Quaternion.identity);
            _ = gameObject1;
        }
    }
}