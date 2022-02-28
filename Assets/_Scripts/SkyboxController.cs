using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkyboxController : MonoBehaviour
{
    public Material Skybox1, Skybox2, Skybox3;

    void Start()
    {
        RenderSettings.skybox = Skybox1;
    }
    void Update()
    {
        if(ScrollingTexture.offset == 500)
        {
            RenderSettings.skybox = Skybox2;
        }
        if(ScrollingTexture.offset == 1000)
        {
            RenderSettings.skybox = Skybox3;
        }
    }
}
