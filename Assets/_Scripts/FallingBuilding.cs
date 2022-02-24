using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingBuilding : MonoBehaviour
{
    void Update()
    {
        transform.position = new Vector3(transform.position.x, transform.position.y -1 * Time.deltaTime, transform.position.z);
    }
}
