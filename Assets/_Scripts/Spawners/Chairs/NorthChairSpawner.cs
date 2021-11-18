using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NorthChairSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    float spawnRate = 2.2f;
    float spawnRateTimer = 2.2f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    public float newMilestone = 50f;
    public GameObject player;
    public GameObject northPaperSpawner;

    void Update()
    {
        spawnRateTimer -= Time.smoothDeltaTime;

        if (spawnRateTimer < 0)
        {
            SpawnDirt();
            spawnRateTimer = spawnRate;
        }

        if (player.GetComponent<WallChecker>().wall == "north" && ScrollingTexture.milestone > newMilestone)
        {
            if (Random.Range(0, 2) == 0)
            {
                SpawnLine();
            } else
            {
                northPaperSpawner.GetComponent<NorthPaperSpawner>().SpawnPaperLine();
            }

            newMilestone += 100;
            if (spawnRate > 0.5)
            {
                spawnRate -= 0.1f;
            }
        }
    }

    void SpawnLine()
    {
        for (int i = 1; i < 6; i++)
        {
            dirtPos = new Vector3(transform.position.x - Offset * i, transform.position.y - 1.35f, transform.position.z + 0.01f);
            Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(Random.Range(0f, 360f), Random.Range(0f, 360f), Random.Range(0f, 360f)));
        }
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x - Offset, transform.position.y - 1.35f, transform.position.z + 0.01f);
        Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(Random.Range(0f, 360f), Random.Range(0f, 360f), Random.Range(0f, 360f)));
        Offset = 2.1f;
    }
}