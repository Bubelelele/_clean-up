using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToolButtons : MonoBehaviour
{
   
    public GameObject standardTool;
    public GameObject wideTool;
    public GameObject longTool;

    public GameObject longButton, wideButton;

    private float longTimer = 0f;
    private float wideTimer = 0f;
    private float longCooldown = 0f;
    private float wideCooldown = 0f;

    // Start is called before the first frame update
    void Start()
    {
        
        standardTool = GameObject.Find("Cleaner");
        wideTool = GameObject.Find("WideCleaner");
        longTool = GameObject.Find("LongCleaner");
        wideTool.SetActive(false);
        longTool.SetActive(false);
    }

    // Update is called once per frame
    
    void Update()
    {
        if (wideTool.activeSelf == true || longTool.activeSelf == true)
        {
            standardTool.SetActive(false);
        }

        if (wideTimer < 0f)
        {
            standardTool.SetActive(true);
            wideTool.SetActive(false);
            wideCooldown = 60f;
            wideTimer = 0f;
        }

        if (wideTimer > 0f)
        {
            wideTimer -= Time.deltaTime;
            wideButton.GetComponent<Image>().fillAmount = wideTimer / 30f;
        }

        if (wideCooldown > 0f)
        {
            wideCooldown -= Time.deltaTime;
            wideButton.GetComponent<Button>().interactable = false;
            wideButton.GetComponent<Image>().fillAmount = 1 - wideCooldown / 60f;
        }
        if (wideCooldown < 0f)
        {
            wideButton.GetComponent<Button>().interactable = true;
        }

        if (longTimer < 0f)
        {
            standardTool.SetActive(true);
            longTool.SetActive(false);
            longCooldown = 60f;
            longTimer = 0f;
        }

        if (longTimer > 0f)
        {
            longTimer -= Time.deltaTime;
            longButton.GetComponent<Image>().fillAmount = longTimer / 30f;
        }

        if (longCooldown > 0f)
        {
            longCooldown -= Time.deltaTime;
            longButton.GetComponent<Button>().interactable = false;
            longButton.GetComponent<Image>().fillAmount = 1 - longCooldown / 60f;
        }
        if (longCooldown < 0f)
        {
            longButton.GetComponent<Button>().interactable = true;
        }

       /* Debug.Log("longCooldown: " + longCooldown);
        Debug.Log("wideCooldown: " + wideCooldown);
        Debug.Log("longCooldown: " + longCooldown);
        Debug.Log("longTimer: " + longTimer);
        Debug.Log("wideTimer: " + wideTimer);*/

        if (AnimationManager.isDead)
        {
            longButton.SetActive(false);
            wideButton.SetActive(false);
        }
        
    }
    
    public void StandardTool()
    {
        standardTool.SetActive(true);
        wideTool.SetActive(false);
        longTool.SetActive(false);
    }
    public void WideTool()
    {
        standardTool.SetActive(false);
        wideTool.SetActive(true);
        longTool.SetActive(false);
        wideCooldown = 0f;
        wideTimer = 30f;

        wideButton.GetComponent<Button>().interactable = false;
    }
    public void LongTool()
    {
        standardTool.SetActive(false);
        wideTool.SetActive(false);
        longTool.SetActive(true);
        longCooldown = 0f;
        longTimer = 30f;

        longButton.GetComponent<Button>().interactable = false;
    }
}
