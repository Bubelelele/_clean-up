using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateWideTool : MonoBehaviour
{
    void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            ToolSpawner.longCleaner.SetActive(false);
            ToolSpawner.cleaner.SetActive(false);
            ToolSpawner.wideCleaner.SetActive(true);

            Destroy(gameObject);
        }
    }
}
