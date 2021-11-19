using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindowSpawner : MonoBehaviour
{
    public GameObject windowPrefab;

    private float newMilestone = 10f;
    private float laneOffset = 2.1f, spawnerOffset = 5.31f;
    private bool windowSwitch = true;
    private float spawnTimer = 1f;

    // Update is called once per frame
    void Update()
    {
        if (ScrollingTexture.offset % 250 == 0 && windowSwitch == true && ScrollingTexture.offset * 1 != 0)
        {
            SpawnWindows();
            windowSwitch = false;
        }

        if (windowSwitch == false)
        {
            spawnTimer -= Time.deltaTime;
        }

        if (spawnTimer < 0)
        {
            windowSwitch = true;
            spawnTimer = 1f;
        }
    }

    void SpawnWindows()
    {
        laneOffset *= Random.Range(-1, 2);
        GameObject window1 = Instantiate(windowPrefab, transform.position + new Vector3(laneOffset, 0.63f, -spawnerOffset), Quaternion.identity);
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-1, 2);
        GameObject window2 = Instantiate(windowPrefab, transform.position + new Vector3(spawnerOffset, 0.63f, laneOffset), Quaternion.Euler(0f, -90f, 0f));
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-1, 2);
        GameObject window3 = Instantiate(windowPrefab, transform.position + new Vector3(laneOffset, 0.63f, spawnerOffset), Quaternion.Euler(0f, 180f, 0f));
        laneOffset = 2.1f;

        laneOffset *= Random.Range(-1, 2);
        GameObject window4 = Instantiate(windowPrefab, transform.position + new Vector3(-spawnerOffset, 0.63f, laneOffset), Quaternion.Euler(0f, 90f, 0f));
        laneOffset = 2.1f;
    }
}
