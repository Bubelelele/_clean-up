using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EastChairSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    float spawnRate = 1.5f;
    public float spawnRateTimer = 1.5f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    public float newMilestone = 50f;
    public GameObject player;
    
    void Update()
    {
        spawnRateTimer -= Time.smoothDeltaTime;

        if (spawnRateTimer < 0)
        {
            SpawnDirt();
            spawnRateTimer = spawnRate;
        }

        if (player.GetComponent<WallChecker>().wall == "east" && ScrollingTexture.milestone > newMilestone)
        {
            SpawnLine();
            newMilestone += newMilestone;
            spawnRate -= 0.1f;
        }
    }

    void SpawnLine()
    {
        for(int i = 1; i < 6; i++)
        {
            dirtPos = new Vector3(transform.position.x + 0.01f, transform.position.y - 1.35f, transform.position.z + Offset * i);
            Instantiate(dirtPrefab, dirtPos, Quaternion.identity);
        }
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x + 0.01f, transform.position.y - 1.35f, transform.position.z + Offset);
        Instantiate(dirtPrefab, dirtPos, Quaternion.identity);
        Offset = 2.1f;
    }
}