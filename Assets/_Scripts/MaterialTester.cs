using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MaterialTester : MonoBehaviour
{

    public Material green, red, yellow, blue, black;

    private Material[] materialList;
    private Material thisMaterial;

    int colorpicker;

    void Start()
    {
        materialList = gameObject.GetComponent<MeshRenderer>().materials;
        
        colorpicker = Random.Range(1,6);
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
        
        materialList[2] = thisMaterial;
        gameObject.GetComponent<MeshRenderer>().materials = materialList;
    }
}
