using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JanitorRockstar : MonoBehaviour
{
    public static bool rockstarActivated = false;
    public bool testActivate = false;
    public AudioSource rockstarMusic;

    // Update is called once per frame
    void Update()
    {
        if (testActivate == true)
        {
            rockstarActivated = true;
            testActivate = false;
        }
    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Player"))
        {
            rockstarMusic.Play();
            rockstarActivated = true;
            Destroy(gameObject);
        }
    }
}
