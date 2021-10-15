using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour
{
    private Component[] Rigidbodies;
    private Component[] Colliders;
    public GameObject pauseMenu;
    static public bool isDead;
 
    void Start()
    {
            
    }

    public void OnTriggerEnter(Collider gameObject)
    {
        transform.Find("Cleaner").gameObject.SetActive(false);
        isDead = true;

        Rigidbodies = GetComponentsInChildren<Rigidbody>();

        foreach (Rigidbody comp in Rigidbodies)
            comp.useGravity = true;
        foreach (Rigidbody comp in Rigidbodies)
            comp.mass = Random.Range(1f, 25f);

        Colliders = GetComponentsInChildren<BoxCollider>();

        foreach (BoxCollider comp in Colliders)
            comp.enabled = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (gameObject.transform.position.y < -130)
        {
            Rigidbodies = GetComponentsInChildren<Rigidbody>();

            foreach (Rigidbody comp in Rigidbodies)
                comp.useGravity = false;

            Colliders = GetComponentsInChildren<BoxCollider>();

            foreach (BoxCollider comp in Colliders)
                comp.enabled = false;

            pauseMenu.GetComponent<PauseMenu>().EndGame();
            transform.position = new Vector3(0, 0, -6.8f);
        }
    }
}
