using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MasterTime : MonoBehaviour
{
    public static float masterTime = 1f;

    // Update is called once per frame
    void Update()
    {
        if (masterTime > 3.0f)
        {
            masterTime = 3.0f;
        }
    }
}
