using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NorthPaperSpawner : MonoBehaviour
{
    public GameObject Newspaper;
    private float spawnRate = 5.20265f;
    private Vector3 dirtPos;
    private float Offset = 2.1f;
    
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("SpawnDirt", 1.55f, spawnRate);
    }

    void SpawnDirt()
    {
        Offset *= Random.Range(1, 6);
        dirtPos = new Vector3(transform.position.x - Offset, transform.position.y - 1.35f, transform.position.z + 2.01f);
        Instantiate(Newspaper, dirtPos, Quaternion.Euler(0f, 180f, 0f));
        Offset = 2.1f;
    }
}