using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationManager : MonoBehaviour
{
    public GameObject pauseMenu;
    static public bool isDead;
    public GameObject player;
    public GameObject playerCamera;

    private float cameraMovementSpeed = 1.5f;
    private float cameraRotationSpeed = 13.75f;
    public static int whichDeath;

    private Component[] Rigidbodies;
    private Component[] Colliders;

    // Start is called before the first frame update
    void Start()
    {
        playerCamera.transform.localPosition = new Vector3(0f, 0f, -2f);
        playerCamera.transform.localRotation = new Quaternion(0f, 0f, 0f, 0f);

        whichDeath = Random.Range(0, 3);
    }

    // Update is called once per frame
    void Update()
    {
        if (!isDead)
        {
            BeginningAnimation();
        }
        else
        {
            if (whichDeath == 0)
            {
                FallingAnimation();
            }
            else if (whichDeath == 1)
            {
                PancakeAnimation();
            }
            else if (whichDeath == 2)
            {
                TowardsScreenAnimation();
            }
        }
    }

    public void OnTriggerEnter(Collider gameObject)
    {
        if (gameObject.CompareTag("KillingObstacle"))
        {
            isDead = true;
        }

        if (gameObject.CompareTag("OpenWindow"))
        {
            MasterTime.masterTime = 0f;
            MasterTime.characterTime = 0f;
            BucketPowerUp.bucketDestroyed = true;

            transform.Find("Cleaner").gameObject.SetActive(false);
            transform.Find("LongCleaner").gameObject.SetActive(false);
            transform.Find("WideCleaner").gameObject.SetActive(false);

            IntoWindowAnimation();
        }
    }

    private void BeginningAnimation()
    {
        if (playerCamera.transform.localPosition.z > -9)
        {
            playerCamera.transform.Translate(Vector3.back * 1.15f * cameraMovementSpeed * Time.deltaTime, Space.World);
        }
        if (playerCamera.transform.localPosition.y > -6)
        {
            playerCamera.transform.Translate(Vector3.down * cameraMovementSpeed * Time.deltaTime, Space.World);
        }
        if (playerCamera.transform.localRotation.eulerAngles.x > 305 || playerCamera.transform.localRotation.eulerAngles.x == 0)
        {
            PaperMoving.onScreen = true;
            playerCamera.transform.Rotate(Vector3.left * cameraRotationSpeed * Time.deltaTime);
        }
        else if (playerCamera.transform.localRotation.eulerAngles.x < 305)
        {
            PaperMoving.onScreen = false;
            playerCamera.transform.localRotation = Quaternion.Euler(305f, 0f, 0f);
        }
    }

    private void FallingAnimation()
    {
        transform.Find("Cleaner").gameObject.SetActive(false);
        transform.Find("LongCleaner").gameObject.SetActive(false);
        transform.Find("WideCleaner").gameObject.SetActive(false);
        MasterTime.masterTime = 0f;

        Rigidbodies = GetComponentsInChildren<Rigidbody>();

        foreach (Rigidbody comp in Rigidbodies)
            comp.useGravity = true;
        foreach (Rigidbody comp in Rigidbodies)
            comp.mass = Random.Range(1f, 25f);

        Colliders = GetComponentsInChildren<BoxCollider>();

        foreach (BoxCollider comp in Colliders)
            comp.enabled = true;

        if (gameObject.transform.position.y < -50)
        {
            Rigidbodies = GetComponentsInChildren<Rigidbody>();

            foreach (Rigidbody comp in Rigidbodies)
                comp.useGravity = false;

            Colliders = GetComponentsInChildren<BoxCollider>();

            foreach (BoxCollider comp in Colliders)
                comp.enabled = false;

            pauseMenu.GetComponent<PauseMenu>().EndGame();
            transform.position = new Vector3(0, 0, -6.8f);

            Time.timeScale = 0f;
        }
    }

    private void TowardsScreenAnimation()
    {
        player.GetComponent<Animator>().SetBool("towards_screen", true);
    }

    private void PancakeAnimation()
    {
        if (player.transform.localScale.y > 0.01)
        {
            PaperMoving.onScreen = true;
            player.GetComponent<Collider>().enabled = false;
            player.transform.localScale -= new Vector3(0f, 0.01f, 0f);
            player.transform.localPosition -= new Vector3(0f, 0.0094f, 0f);
        }
        else
        {
            playerCamera.GetComponent<Animator>().enabled = true;
        }
    }

    private void IntoWindowAnimation()
    {
        ScoreController.rockstarTimer = -1f;
        player.GetComponent<Collider>().enabled = false;
        player.GetComponent<Animator>().SetBool("drag_into_window", true);
    }
}
