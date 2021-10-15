using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EastDirtSpawner : MonoBehaviour
{
    public GameObject dirtPrefab;
    public float spawnRate = 2f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("SpawnDirt", 0f, spawnRate);
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x + 0.01f, transform.position.y - 1.35f, transform.position.z + Offset);
        Instantiate(dirtPrefab, dirtPos, Quaternion.Euler(0f, 90f, 0f));
        Offset = 2.1f;
    }
}