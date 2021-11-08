using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WestChairSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    float spawnRate = 2.2f;
    public float spawnRateTimer = 2.2f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    public float newMilestone = 50f;
    public GameObject player;
    public GameObject westPaperSpawner;

    void Update()
    {
        spawnRateTimer -= Time.smoothDeltaTime;

        if (spawnRateTimer < 0)
        {
            SpawnDirt();
            spawnRateTimer = spawnRate;
        }

        if (player.GetComponent<WallChecker>().wall == "west" && ScrollingTexture.milestone > newMilestone)
        {
            if (Random.Range(0, 2) == 0)
            {
                SpawnLine();
            } else
            {
                westPaperSpawner.GetComponent<WestPaperSpawner>().SpawnPaperLine();
            }
            newMilestone += newMilestone;
            spawnRate -= 0.1f;
        }
    }

    void SpawnLine()
    {
        for (int i = 1; i < 6; i++)
        {
            dirtPos = new Vector3(transform.position.x - 0.01f, transform.position.y - 1.35f, transform.position.z - Offset * i);
            Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(Random.Range(0f, 360f), Random.Range(0f, 360f), Random.Range(0f, 360f)));
        }
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x - 0.01f, transform.position.y - 1.35f, transform.position.z - Offset);
        Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(Random.Range(0f, 360f), Random.Range(0f, 360f), Random.Range(0f, 360f)));
        Offset = 2.1f;
    }
}