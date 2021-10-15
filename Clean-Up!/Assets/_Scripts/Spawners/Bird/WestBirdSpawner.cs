using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WestBirdSpawner : MonoBehaviour
{
    public GameObject birdPrefab;
    public float spawnRate = 2f;
    private Vector3 birdPos;
    
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("SpawnDirt", 0f, spawnRate);
        birdPos = new Vector3(-6.67f, 40.3f, 20f);
    }

    void SpawnDirt()
    {
        Instantiate(birdPrefab, birdPos, Quaternion.Euler(0f, -90f, 0f));
    }
}