using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class DirtController : MonoBehaviour
{
    public bool trigger = false;
    Color color;
    public Text scoreTotal;

    // Start is called before the first frame update
    void Start()
    { 
        color = GetComponent<Renderer>().material.color;
    }

    // Code runs when colliding with anything that has a collider + rigibody.
    private void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("OpenWindow"))
        {
            Destroy(gameObject);
            Debug.Log("Dirty open window!");
        }
        trigger = true;
    }

    void Update()
    {
        if (trigger == true && SuperBleach.bleachClean == true || trigger == true && CleaningAction.startedCleaning == true)
        {
          //  Vector3 scaleChange = new Vector3(-0.032f, 0, 0);
            /*Vector3 scaleChange = new Vector3(0, Time.deltaTime * 8f, 0);
            Vector3 positionChange = new Vector3(0, Time.deltaTime * 4.7f, 0);
            transform.localScale -= scaleChange;
            transform.localPosition += positionChange;*/
            color.a -= Time.deltaTime * 8f * MasterTime.masterTime;
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