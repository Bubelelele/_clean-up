using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BackgroundScroll : MonoBehaviour
{
    public RawImage background;

    private float scrollSpeed = 0.1f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        background.uvRect = new Rect(0f, scrollSpeed * Time.time, background.uvRect.width, background.uvRect.height);
    }
}
