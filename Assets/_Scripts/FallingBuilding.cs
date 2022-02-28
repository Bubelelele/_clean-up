using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingBuilding : MonoBehaviour
{
    void Update()
    {
        transform.position = new Vector3(transform.position.x, transform.position.y -1 * MasterTime.masterTime * Time.deltaTime, transform.position.z);

        if(transform.position.y < -200)
        {
            Destroy(gameObject);
        }
    }
}
