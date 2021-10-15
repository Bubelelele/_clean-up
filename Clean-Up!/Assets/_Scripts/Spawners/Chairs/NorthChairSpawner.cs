using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NorthChairSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    public float spawnRate = 1.5f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    public float newMilestone = 50f;
    public GameObject player;

    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("SpawnDirt", 7.5f, spawnRate);
    }

    void Update()
    {
        if (player.GetComponent<WallChecker>().wall == "north" && ScrollingTexture.milestone > newMilestone)
        {
            SpawnLine();
            newMilestone += newMilestone;
        }

    }

    void SpawnLine()
    {
        for (int i = 1; i < 6; i++)
        {
            dirtPos = new Vector3(transform.position.x - Offset * i, transform.position.y - 1.35f, transform.position.z + 0.01f);
            Instantiate(dirtPrefab, dirtPos, Quaternion.identity);
        }
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x - Offset, transform.position.y - 1.35f, transform.position.z + 0.01f);
        Instantiate(dirtPrefab, dirtPos, Quaternion.identity);
        Offset = 2.1f;
    }
}