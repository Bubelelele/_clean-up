using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BucketPickup : MonoBehaviour
{
    private void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Player"))
        {
            AudioController.bucket.Play();
            BucketPowerUp.bucketPickedup = true;
            Destroy(gameObject);
        }
    }
}
