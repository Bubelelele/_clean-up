using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupSpawnerController : MonoBehaviour
{
    public GameObject rockstarPrefab, bucketPrefab, superBleachPrefab;

    private float newMilestone = 50f;
    private float spawnOffset = 6.3f;
    private GameObject pickupToSpawn;

    // Update is called once per frame
    void Update()
    {
        if (ScrollingTexture.milestone > newMilestone)
        {
            SpawnPickup(transform.position + new Vector3(spawnOffset, 0f, 0f));
            SpawnPickup(transform.position + new Vector3(-spawnOffset, 0f, 0f));
            SpawnPickup(transform.position + new Vector3(0f, 0f, spawnOffset));
            SpawnPickup(transform.position + new Vector3(0f, 0f, -spawnOffset));

            newMilestone += ScrollingTexture.milestone;
        }
    }

    private void SpawnPickup(Vector3 targetPosition)
    {
        float chance = Random.Range(0f, 100f);

        if (chance > 0f && chance < 60f)
        {
            pickupToSpawn = rockstarPrefab;
        }
        else if (chance >= 60f && chance < 90f)
        {
            pickupToSpawn = bucketPrefab;
        }
        else
        {
            pickupToSpawn = superBleachPrefab;
        }

        GameObject pickup = Instantiate(pickupToSpawn, targetPosition, Quaternion.identity);
    }
}
