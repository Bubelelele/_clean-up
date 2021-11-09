using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BucketPickup : MonoBehaviour
{
    private void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Player"))
        {
            BucketPowerUp.bucketPickedup = true;
            Destroy(gameObject);
        }
    }
}
