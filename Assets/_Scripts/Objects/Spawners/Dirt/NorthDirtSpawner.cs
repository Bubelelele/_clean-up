using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NorthDirtSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    private float spawnTimer = 1f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    private bool dirtSwitch = true;

    void Update()
    {
        if (ScrollingTexture.offset % 5 == 0 && dirtSwitch == true)
        {
            SpawnDirt();
            dirtSwitch = false;
        }

        if (dirtSwitch == false)
        {
            spawnTimer -= Time.deltaTime;
        }

        if (spawnTimer < 0)
        {
            dirtSwitch = true;
            spawnTimer = 1f;
        }
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x - Offset, transform.position.y + 0.6f, transform.position.z + 0.01f);
        Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(0f, 180f, 0f));
        Offset = 2.1f;
    }
}