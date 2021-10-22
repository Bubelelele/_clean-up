using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DirtMoving : MonoBehaviour
{
    public float dirtSpeed = -1.5f;
    private Vector3 startPosition;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (PlayerHealth.isDead == false)
            {

            Vector3 positionChange = new Vector3(0f, Time.deltaTime * dirtSpeed, 0f);
            transform.position += positionChange;

            if (gameObject.transform.position.y < -5)
            {
                Destroy(gameObject);
            }
        }
    }
}
