using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChairMoving : MonoBehaviour
{
    public float chairSpeed = -1.5f;
    private Vector3 startPosition;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 positionChange = new Vector3(0f, Time.deltaTime * chairSpeed, 0f);
        transform.position += positionChange;

        if (gameObject.transform.position.y < -5)
        {
            Destroy(gameObject);
        }
        
        if (PlayerHealth.isDead == true)
        {
            this.GetComponent<Rigidbody>().useGravity = true;
        }
        else { this.GetComponent<Rigidbody>().useGravity = false; }
    }
}
