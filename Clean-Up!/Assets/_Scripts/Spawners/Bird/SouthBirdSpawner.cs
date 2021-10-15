using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SouthBirdSpawner : MonoBehaviour
{
    public GameObject birdPrefab;
    public float spawnRate = 2f;
    private Vector3 birdPos;
    
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("SpawnDirt", 0f, spawnRate);
        birdPos = new Vector3(-20f, 40f, -6.67f);
    }

    void SpawnDirt()
    {
        Instantiate(birdPrefab, birdPos, Quaternion.Euler(0f, 180f, 0f));
    }
}