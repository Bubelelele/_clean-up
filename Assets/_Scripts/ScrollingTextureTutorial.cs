using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScrollingTextureTutorial : MonoBehaviour
{
    public GameObject quadGameObject;
    public Renderer quadRenderer;
    public static float milestone;
    public Text height;
    public static string heightTotal;
    public int lbHeight;
    public static int offset;

    static public float scrollSpeed = 2.27f;

    void Start()
    {
        milestone = 50f;
        quadRenderer = quadGameObject.GetComponent<Renderer>();
    }

    void Update()
    {
        offset = (int)quadRenderer.material.mainTextureOffset.y;
        if (AnimationManager.isDead == true)
        {
            MasterTime.masterTime = 0f;
            heightTotal = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
            lbHeight = ((int)quadRenderer.material.mainTextureOffset.y);
            PlayerPrefs.SetInt("height", lbHeight);
            PlayerPrefs.SetInt("score", ScoreController.score);
        }
        Vector2 textureOffset = new Vector2(0f, Time.deltaTime * scrollSpeed * MasterTime.tutorialTime);
        quadRenderer.material.mainTextureOffset += textureOffset;
        height.text = ((int)quadRenderer.material.mainTextureOffset.y).ToString() + "m";
    }
}