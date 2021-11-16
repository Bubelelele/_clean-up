using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JanitorRockstar : MonoBehaviour
{
    public static bool rockstarActivated = false;
    public bool testActivate = false;

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
            rockstarActivated = true;
            AudioController.janitorRockstar.Play();
            Destroy(gameObject);
        }
    }
}
