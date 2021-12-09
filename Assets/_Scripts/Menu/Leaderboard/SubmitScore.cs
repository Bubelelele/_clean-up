using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SubmitScore : MonoBehaviour
{

    public InputField displayScore;
    public static string scoreCombination;
    public GameObject HighscoreTable;
    
    // Start is called before the first frame update
    void Start()
    { 
        HighscoreTable.GetComponent<HighscoreTable>();
        scoreCombination = PlayerPrefs.GetInt("score").ToString() + "pts, " + PlayerPrefs.GetInt("height").ToString() + "m";
        PlayerPrefs.SetString("scores", scoreCombination);
    }

    // Update is called once per frame
    void Update()
    {
        displayScore.text = scoreCombination;
    }
}