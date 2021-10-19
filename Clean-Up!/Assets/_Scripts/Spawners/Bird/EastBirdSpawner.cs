using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EastBirdSpawner : MonoBehaviour
{
    public GameObject birdPrefab;
    public float birdTimer;
    private Vector3 birdPos;
    
    // Start is called before the first frame update
    void Start()
    {
        birdTimer = Random.Range(5f, 20f);
        birdPos = new Vector3(7.67f, 40.3f, -15.01f);
    }

    void Update()
    {
        birdTimer -= Time.smoothDeltaTime;

        if (birdTimer < 0)
        {
            birdTimer = Random.Range(5f, 20f);
            SpawnBird();
        }
    }

    void SpawnBird()
    {
        Instantiate(birdPrefab, birdPos, Quaternion.Euler(0f, 90f, 0f));
    }
}