using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BleachPickup : MonoBehaviour
{
    private void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Player"))
        {
            AudioController.superBleach.Play();
            SuperBleach.testActivated = true;
            Destroy(gameObject);
        }
    }
}
