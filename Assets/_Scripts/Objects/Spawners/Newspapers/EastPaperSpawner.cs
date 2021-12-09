using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EastPaperSpawner : MonoBehaviour
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
        dirtPos = new Vector3(transform.position.x + 2.01f, transform.position.y - 1.35f, transform.position.z + Offset);
        Instantiate(Newspaper, dirtPos, Quaternion.Euler(0f, 90f, 0f));
        Offset = 2.1f;
    }
    
    public void SpawnPaperLine()
    {
        for(int i = 1; i < 6; i++)
        {
            dirtPos = new Vector3(transform.position.x + 2.01f, transform.position.y - 1.35f, transform.position.z + Offset * i);
            Instantiate(Newspaper, dirtPos, Quaternion.Euler(0f, 90f, 0f));
        }
    }
}