using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class DirtController : MonoBehaviour
{
    bool trigger = false;
    Color color;
    public Text scoreTotal;

    // Start is called before the first frame update
    void Start()
    { 
        color = GetComponent<Renderer>().material.color;
    }

    // Code runs when colliding with anything that has a collider + rigibody.
    private void OnTriggerEnter(Collider gameObject)
    {
        trigger = true;
    }

    void Update()
    {
        if (Input.GetMouseButton(0) && trigger == true)
        {
          //  Vector3 scaleChange = new Vector3(-0.032f, 0, 0);
            /*Vector3 scaleChange = new Vector3(0, Time.deltaTime * 8f, 0);
            Vector3 positionChange = new Vector3(0, Time.deltaTime * 4.7f, 0);
            transform.localScale -= scaleChange;
            transform.localPosition += positionChange;*/
            color.a -= Time.deltaTime * 8f;
            this.GetComponent<Renderer>().material.color = color;

        }
        if (color.a < 0.1)
        {
            ScoreController.scoreGained = true;
            Destroy(gameObject);
            trigger = false;
        }
    }
    private void OnTriggerExit(Collider gameObject)
    {
        trigger = false;
    }
}