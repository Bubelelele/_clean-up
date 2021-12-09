using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToolSpawner : MonoBehaviour
{
    public GameObject wideTool, longTool;
    public static GameObject cleaner, wideCleaner, longCleaner;

    private GameObject toolToSpawn;

    private float rate = 200f;
    private float laneOffset = 2.1f, spawnerOffset = 6.3f;
    private bool toolSwitch = true;
    private float spawnTimer = 1f;

    void Awake()
    {
        cleaner = GameObject.Find("Cleaner");
        wideCleaner = GameObject.Find("WideCleaner");
        longCleaner = GameObject.Find("LongCleaner");
    }

    void Start()
    {
        wideCleaner.SetActive(false);
        longCleaner.SetActive(false);
        
        if (Random.Range(0, 2) == 0)
        {
            toolToSpawn = wideTool;
        }
        else
        {
            toolToSpawn = longTool;
        }
    }

    void Update()
    {
        if (ScrollingTexture.offset % rate == 0 && toolSwitch == true && ScrollingTexture.offset * 1 != 0)
        {
            SpawnTools();
            // rate *= 0.5f;
            toolSwitch = false;
        }

        if (toolSwitch == false)
        {
            spawnTimer -= Time.deltaTime;
        }

        if (spawnTimer < 0)
        {
            toolSwitch = true;
            spawnTimer = 1f;
        }
    }

    void SpawnTools()
    {
        laneOffset *= Random.Range(-2, 3);
        GameObject tool1 = Instantiate(toolToSpawn, transform.position + new Vector3(laneOffset, 0.63f, -spawnerOffset), Quaternion.identity);
        tool1.GetComponent<CleaningAction>().enabled = false;
        tool1.AddComponent<DirtMoving>().dirtSpeed = -10f;
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-2, 3);
        GameObject tool2 = Instantiate(toolToSpawn, transform.position + new Vector3(spawnerOffset, 0.63f, laneOffset), Quaternion.Euler(0f, -90f, 0f));
        tool2.GetComponent<CleaningAction>().enabled = false;
        tool2.AddComponent<DirtMoving>().dirtSpeed = -10f;
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-2, 3);
        GameObject tool3 = Instantiate(toolToSpawn, transform.position + new Vector3(laneOffset, 0.63f, spawnerOffset), Quaternion.Euler(0f, 180f, 0f));
        tool3.GetComponent<CleaningAction>().enabled = false;
        tool3.AddComponent<DirtMoving>().dirtSpeed = -10f;
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-2, 3);
        GameObject tool4 = Instantiate(toolToSpawn, transform.position + new Vector3(-spawnerOffset, 0.63f, laneOffset), Quaternion.Euler(0f, 90f, 0f));
        tool4.GetComponent<CleaningAction>().enabled = false;
        tool4.AddComponent<DirtMoving>().dirtSpeed = -10f;
        laneOffset = 2.1f;

        if (toolToSpawn == wideTool)
        {
            toolToSpawn = longTool;
        }
        else
        {
            toolToSpawn = wideTool;
        }
    }
}
