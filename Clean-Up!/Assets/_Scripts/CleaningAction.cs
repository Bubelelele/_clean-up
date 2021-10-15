using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CleaningAction : MonoBehaviour
{
    
    // Start is called before the first frame update
    void Start()
    {

    }
    private void OnTriggerEnter(Collider gameObject)
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {

        if (transform.localPosition.y > 2.9)
        {
            transform.position = new Vector3(transform.position.x, 2.2f, transform.position.z);
        }

        if (Input.GetMouseButton(0))
        {
            Vector3 positionChange = new Vector3(Time.fixedDeltaTime * 0, 0.05f, 0);
            transform.position += positionChange;
        }

        else if (!Input.GetMouseButton(0))
        {
            transform.position = new Vector3(transform.position.x, 2.2f, transform.position.z);
        }
        
            
        
    }
}

