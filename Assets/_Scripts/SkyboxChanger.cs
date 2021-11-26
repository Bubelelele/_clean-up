using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkyboxChanger : MonoBehaviour
{
    public Material Day;
    public Material Night;
    private float timeChangeTimer = 1f;
    private bool timeChanged = false;
    private int test = 1;

    private void Start()
    {
       /* ScrollingTexture.
        RenderSettings.skybox = Day;
    }
    public void OnTriggerEnter(Collider col)
    {
        
        if (col.CompareTag("Cloud"))
        {
            Debug.Log("hit");
            test = 0;
            Debug.Log(test);
            timeChanged = true;
        }

       /* if (col.CompareTag("Cloud") && (RenderSettings.skybox == Night) && timeChangeTimer == 1f)
        {
            Debug.Log("Day");
            timeChanged = true;
            RenderSettings.skybox = Day;
            
        }
        
        else if (col.CompareTag("Cloud") && (RenderSettings.skybox == Day) && timeChangeTimer == 1f)
        {
            Debug.Log("Night");
            timeChanged = true;
            RenderSettings.skybox = Night;
            
        }

        /*if (RenderSettings.skybox = Day)
        {
            Debug.Log("Day");
            RenderSettings.skybox = Night;
        }
        else if (RenderSettings.skybox = Night)
        {
            Debug.Log("Night");
            RenderSettings.skybox = Day;
        }*/

    }
   

    void Update()
    {
        Debug.Log(timeChanged);
        Debug.Log(timeChangeTimer);
        /*if(timeChanged == true)
        {
            timeChangeTimer -= Time.deltaTime;
        }

        if(timeChangeTimer < 0)
        {
            if(RenderSettings.skybox = Day)
            {
                RenderSettings.skybox = Night;
            }
            else
            {
                RenderSettings.skybox = Day;
            }
            timeChanged = false;
            timeChangeTimer = 1f;
        }
       
         if (Input.GetKeyDown(KeyCode.N))
         {
            RenderSettings.skybox = Night;
         }
         else if (Input.GetKeyDown(KeyCode.M))
         {
            RenderSettings.skybox = Day;
         }*/
    }
}

