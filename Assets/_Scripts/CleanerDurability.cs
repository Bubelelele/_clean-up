using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CleanerDurability : MonoBehaviour
{
    private GameObject Cleaner;
    private bool durabilitySwitch;
    private int Durability = 10; //Amount of times you can clean.

    // Start is called before the first frame update
    void Start()
    {
        Cleaner = GameObject.Find("Cleaner");
    }

    // Update is called once per frame
    void Update()
    {

        if (CleaningAction.loseDurability == true && durabilitySwitch == false)
        {
            Durability -= 1;
            durabilitySwitch = true;                //Need double bool switches because if not it will go every frame of the cleaning action timer.
            CleaningAction.loseDurability = false;  //I found no way around this with my current time limit. I'm sorry.
        }

        if (CleaningAction.startedCleaning == false)
        {
            durabilitySwitch = false;
        }

        if (Durability <= 0)  //Once durability is 0 it disabled the current cleaner and enables the normal one. Then it also resets its durability for next pickup.
        {
            gameObject.SetActive(false);
            Cleaner.SetActive(true);
            Durability = 10;
        }
    }
}
