using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperBleach : MonoBehaviour
{
    private Vector3 startPosition, moveUpwards;
    public bool bleachActivated = false;
    public static bool bleachClean = false, testActivated = false;
    public BoxCollider bleachCollider;
    public GameObject Player, Cleaner, Particles;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
        Particles.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (testActivated == true)
        {
            bleachActivated = true;
            testActivated = false;
        }
        if (bleachActivated == true)
        {
            Particles.gameObject.SetActive(true);
            gameObject.transform.parent = null;
            bleachCollider.enabled = true;
            bleachClean = true;
            moveUpwards = new Vector3(0f, 13 * Time.deltaTime);
            transform.position += moveUpwards;
        }
        if (transform.position.y > 125)
        {
            Particles.gameObject.SetActive(false);
            bleachCollider.enabled = false;
            bleachClean = false;
            bleachActivated = false;
            transform.position = new Vector3(Cleaner.transform.position.x, Cleaner.transform.position.y - 6.6f, Cleaner.transform.position.z);
            transform.rotation = Cleaner.transform.rotation;
            gameObject.transform.parent = Player.transform;
        }
    }
}
