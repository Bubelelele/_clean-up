using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateLongTool : MonoBehaviour
{
    void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            ToolSpawner.longCleaner.SetActive(true);
            ToolSpawner.cleaner.SetActive(false);
            ToolSpawner.wideCleaner.SetActive(false);

            Destroy(gameObject);
        }
    }
}
