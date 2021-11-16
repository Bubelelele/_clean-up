using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkyboxChanger : MonoBehaviour
{
    public Material Day;
    public Material Night;
    Color color;
    
    
    

    void Start()
    {
        color = Day.color;
        RenderSettings.skybox = Day;
        
       
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.N))
        {
            color.a -= Time.deltaTime * 2f;
            
            RenderSettings.skybox = Night;
        }
        else if (Input.GetKeyDown(KeyCode.M))
        {
            RenderSettings.skybox = Day;
        }
    }
}

