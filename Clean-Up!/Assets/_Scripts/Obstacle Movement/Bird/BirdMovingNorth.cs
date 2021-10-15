using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdMovingNorth : MonoBehaviour
{
    public float dirtSpeed = -8.4f;
    private Vector3 startPosition;
    float randomSpeed;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
        randomSpeed = Random.Range(-2f, -6f);
    }

    // Update is called once per frame
    void Update()
    {
            Vector3 positionChange = new Vector3(Time.deltaTime * randomSpeed, Time.deltaTime * dirtSpeed, 0f);
            transform.position += positionChange;

            if (gameObject.transform.position.y < -5)
            {
                Destroy(gameObject);
            }
    }
}
