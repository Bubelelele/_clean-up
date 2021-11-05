using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BucketPowerUp : MonoBehaviour
{
   
    public GameObject bucket;
    public static bool bucketDestroyed = false;
    public static bool bucketPickedup = false;

    private void Update()
    {
        if(bucketDestroyed == true)
        {
            bucket.SetActive(false);
            bucketDestroyed = false;
        }
        if (bucketPickedup == true)
        {
            bucket.SetActive(true);
            bucketPickedup = false;
        }
       
    }
   

}
