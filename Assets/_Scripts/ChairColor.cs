using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChairColor : MonoBehaviour
{

    public Material green, red, yellow, blue, black;

    private Material[] materialList;
    private Material thisMaterial;

    int colorpicker;

    void Start()
    {
        materialList = gameObject.GetComponent<MeshRenderer>().materials; //Takes all the materials on the chair object and puts them in a list.
        
        colorpicker = Random.Range(1,6); //Chooses a random color.
        if (colorpicker == 1)
        {
            thisMaterial = green;
        }
        if (colorpicker == 2)
        {
            thisMaterial = red;
        }
        if (colorpicker == 3)
        {
            thisMaterial = yellow;
        }
        if (colorpicker == 4)
        {
            thisMaterial = blue;
        }
        if (colorpicker == 5)
        {
            thisMaterial = black;
        }
        
        materialList[2] = thisMaterial; //Finds the seat material in the list and changes it to the randomly selected color material.
        gameObject.GetComponent<MeshRenderer>().materials = materialList; //Reassigns the list to the chair object.
    }
}
