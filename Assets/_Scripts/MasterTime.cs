using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MasterTime : MonoBehaviour
{
    public static float masterTime = 1f;
    public static float tutorialTime = 1f;

    // Update is called once per frame
    void Update()
    {
        if (masterTime > 3.0f)
        {
            masterTime = 3.0f;
        }

        if (Input.GetKeyDown(KeyCode.E))
        {
            masterTime += 0.1f;
        }
        
        if (Input.GetKeyDown(KeyCode.Q))
        {
            masterTime -= 0.1f;
        }
    }
}
