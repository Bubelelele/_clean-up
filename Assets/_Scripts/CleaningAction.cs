using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CleaningAction : MonoBehaviour
{
    static public bool startedCleaning = false, loseDurability = false;
    float cleaningTimer = 1f;

    // Update is called once per frame
    void FixedUpdate()
    {
        if (AnimationManager.isDead == false)
        {
            if (transform.localPosition.y > 2.9)
            {
                transform.position = new Vector3(transform.position.x, 2.2f, transform.position.z);
            }

            if (Input.GetKey(KeyCode.Space) && startedCleaning == false)
            {
                startedCleaning = true;
                loseDurability = true;
            }

            if (startedCleaning == true && cleaningTimer > 0)
            {
                cleaningTimer -= Time.deltaTime;
                Vector3 positionChange = new Vector3(Time.fixedDeltaTime * 0, 0.05f * MasterTime.characterTime, 0);
                transform.position += positionChange;
            }

            if (cleaningTimer < 0)
            {
                startedCleaning = false;
            }

            if (startedCleaning == false)
            {
                transform.position = new Vector3(transform.position.x, 2.2f, transform.position.z);
                cleaningTimer = 1f;
            }
        }
    }
    public void Clean()
    {
        if (AnimationManager.isDead == false)
        {
            startedCleaning = true;
        }
    }
}

