using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticlePosition : MonoBehaviour
{
    public GameObject superBleach;

    //This script is literally just to have the particles follow the superbleach.
    //If you make the particles a child of the super bleach it messes everything up, thus this exists.
    void Update()
    {
        transform.position = superBleach.transform.position;
        transform.rotation = superBleach.transform.rotation;
    }
}
