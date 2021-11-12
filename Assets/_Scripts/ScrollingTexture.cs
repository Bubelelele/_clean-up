using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScrollingTexture : MonoBehaviour
{
    public GameObject quadGameObject;
    private Renderer quadRenderer;
    public static float milestone;
    public Text height;
    public static string heightTotal;
    public int lbHeight;

    public float scrollSpeed = 2.27f;

    void Start()
    {
        milestone = 50f;
        quadRenderer = quadGameObject.GetComponent<Renderer>();
    }

    void Update()
    {        
        if (AnimationManager.isDead == true)
        {
            scrollSpeed = 0f;
            heightTotal = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
            lbHeight = ((int)quadRenderer.material.mainTextureOffset.y);
            PlayerPrefs.SetInt("height", lbHeight);
            PlayerPrefs.SetInt("score", ScoreController.score);
        }
        Vector2 textureOffset = new Vector2(0f, Time.deltaTime * scrollSpeed * MasterTime.masterTime);
        quadRenderer.material.mainTextureOffset += textureOffset;

        if (quadRenderer.material.mainTextureOffset.y > milestone)
        {
            //scrollSpeed *= 1.5f;
            MasterTime.masterTime *= 1.15f;
            milestone += 100f;
            Debug.Log("Master time is now: " + MasterTime.masterTime);
        }

        height.text = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
    }
}