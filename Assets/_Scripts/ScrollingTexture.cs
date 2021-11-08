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
    public static float masterTime;
    public int lbHeight;

    public float scrollSpeed = 2.27f;

    void Start()
    {
        milestone = 50f;
        masterTime = 1f;
        quadRenderer = quadGameObject.GetComponent<Renderer>();
    }

    void Update()
    {
        if (PauseMenu.GameIsPaused == false)
        {
            Time.timeScale = masterTime;
        }
        
        if (AnimationManager.isDead == true)
        {
            scrollSpeed = 0f;
            heightTotal = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
            lbHeight = ((int)quadRenderer.material.mainTextureOffset.y);
            PlayerPrefs.SetInt("height", lbHeight);
            PlayerPrefs.SetInt("score", ScoreController.score);
        }
        Vector2 textureOffset = new Vector2(0f, Time.deltaTime * scrollSpeed);
        quadRenderer.material.mainTextureOffset += textureOffset;

        if (quadRenderer.material.mainTextureOffset.y > milestone)
        {
            //scrollSpeed *= 1.5f;
            masterTime *= 1.25f;
            milestone += milestone;
        }

        height.text = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
    }
}