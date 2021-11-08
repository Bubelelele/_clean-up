using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationManager : MonoBehaviour
{
    public GameObject player;
    public GameObject playerCamera;

    private float cameraMovementSpeed = 1.5f;
    private float cameraRotationSpeed = 13.75f;

    // Start is called before the first frame update
    void Start()
    {
        playerCamera.transform.localPosition = new Vector3(0f, 0f, -2f);
        playerCamera.transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
    }

    // Update is called once per frame
    void Update()
    {
        if (playerCamera.transform.localPosition.z > -9)
        {
            playerCamera.transform.Translate(Vector3.back * 1.15f * cameraMovementSpeed * Time.deltaTime, Space.World);
        }
        if (playerCamera.transform.localPosition.y > -6)
        {
            playerCamera.transform.Translate(Vector3.down * cameraMovementSpeed * Time.deltaTime, Space.World);
        }
        if (playerCamera.transform.rotation.eulerAngles.x > 305 || playerCamera.transform.rotation.eulerAngles.x == 0)
        {
            playerCamera.transform.Rotate(Vector3.left * cameraRotationSpeed * Time.deltaTime);
        }
    }
}
