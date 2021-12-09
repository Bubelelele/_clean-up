using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MasterTime : MonoBehaviour
{
    public static float masterTime = 1f;
    public static float characterTime = 1.25f;

    // Update is called once per frame
    void Update()
    {
        if (masterTime > 3.0f) // Caps the speed limit at 3x.
        {
            masterTime = 3.0f;
        }

        if (characterTime > 3.0f) // Caps the speed limit of the player character at 3x.
        {
            characterTime = 3.0f;
        }

        if (!Input.GetKey(KeyCode.LeftShift) && Input.GetKeyDown(KeyCode.Q)) // Decreases the master speed.
        {
            masterTime -= 0.1f;
            Debug.Log("MasterTime: " + masterTime);
        }

        if (!Input.GetKey(KeyCode.LeftShift) && Input.GetKeyDown(KeyCode.E)) // Increases the master speed.
        {
            masterTime += 0.1f;
            Debug.Log("MasterTime: " + masterTime);
        }

        if (Input.GetKey(KeyCode.LeftShift) && Input.GetKeyDown(KeyCode.Q)) // Decreases the character speed.
        {
            characterTime -= 0.1f;
            Debug.Log("CharacterTime: " + characterTime);
        }

        if (Input.GetKey(KeyCode.LeftShift) && Input.GetKeyDown(KeyCode.E)) // Increases the character speed.
        {
            characterTime += 0.1f;
            Debug.Log("CharacterTime: " + characterTime);
        }
    }
}
