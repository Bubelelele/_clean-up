using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageRotation : MonoBehaviour
{
    public float angle = 90f;
    
    // Update is called once per frame
    void Update()
    {
        Time.timeScale = 1f;
        transform.Rotate(0, 0, angle * Time.deltaTime);
    }
}
