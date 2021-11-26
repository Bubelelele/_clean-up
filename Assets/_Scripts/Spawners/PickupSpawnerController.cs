using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupSpawnerController : MonoBehaviour
{
    public GameObject rockstarPrefab, bucketPrefab, superBleachPrefab;

    private float newMilestone = 50f;
    private float spawnOffset = 6.4f;
    private GameObject pickupToSpawn;
    public GameObject spawner1, spawner2, spawner3, spawner4, spawner5, spawner6, spawner7, spawner8;

    // Update is called once per frame
    void Update()
    {
        if (ScrollingTexture.milestone > newMilestone)
        {
            /*
            SpawnPickup(transform.position + new Vector3(spawnOffset, 0f, 0f));
            SpawnPickup(transform.position + new Vector3(-spawnOffset, 0f, 0f));
            SpawnPickup(transform.position + new Vector3(0f, 0f, spawnOffset));
            SpawnPickup(transform.position + new Vector3(0f, 0f, -spawnOffset));
            */

            SpawnPickups();

            newMilestone += 150f;
        }

        if (ScrollingTexture.milestone > 150f)
        {
            spawner1.SetActive(true);
            spawner2.SetActive(true);
            spawner3.SetActive(true);
            spawner4.SetActive(true);
        }

        if (ScrollingTexture.milestone > 250f)
        {
            spawner5.SetActive(true);
            spawner6.SetActive(true);
            spawner7.SetActive(true);
            spawner8.SetActive(true);
        }
    }

    private void SpawnPickups(/*Vector3 targetPosition*/)
    {
        float chance = Random.Range(0f, 100f);
        
        if (chance > 0f && chance <= 50f && pickupToSpawn != superBleachPrefab)
        {
            pickupToSpawn = superBleachPrefab;
        }
        else if ((chance > 50f && chance <= 80f && pickupToSpawn != bucketPrefab) || (chance > 0f && chance <= 50f && pickupToSpawn == superBleachPrefab))
        {
            pickupToSpawn = bucketPrefab;
        }
        else if ((chance > 80f && chance <= 100f && pickupToSpawn != rockstarPrefab) || (chance > 50f && chance <= 80f && pickupToSpawn == bucketPrefab))
        {
            pickupToSpawn = rockstarPrefab;
        }
        else
        {
            pickupToSpawn = superBleachPrefab;
        }

        GameObject pickup1 = Instantiate(pickupToSpawn, transform.position + new Vector3(spawnOffset, 0f, 0f), Quaternion.identity);
        GameObject pickup2 = Instantiate(pickupToSpawn, transform.position + new Vector3(-spawnOffset, 0f, 0f), Quaternion.identity);
        GameObject pickup3 = Instantiate(pickupToSpawn, transform.position + new Vector3(0f, 0f, spawnOffset), Quaternion.identity);
        GameObject pickup4 = Instantiate(pickupToSpawn, transform.position + new Vector3(0f, 0f, -spawnOffset), Quaternion.identity);
    }
}
