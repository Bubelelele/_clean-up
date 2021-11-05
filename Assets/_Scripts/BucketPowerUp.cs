using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BucketPowerUp : MonoBehaviour
{
   
    public GameObject bucket;
    public static bool bucketDestroyed = false;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.B) && bucket.activeSelf)
        {
            bucket.transform.gameObject.SetActive(false);
        }
        else if(Input.GetKeyDown(KeyCode.B) && !bucket.activeSelf)
        {
            bucket.transform.gameObject.SetActive(true);
        }
        if(bucketDestroyed == true)
        {
            bucket.SetActive(false);
        }
       
    }
   

}
