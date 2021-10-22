using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreController : MonoBehaviour
{
    static public bool scoreGained;
    bool plus10animation;
    bool multiplierAnimation;
    static public int score;
    int scoreAddition = 10;
    int streakCount = 0;
    int multiplier = 1;
    int scoreCombination;
    float animTimer = 1;
    float animTimer2 = 1;
    private float streakTimer = 11f;

    public Text scoreTotal;
    public Text plus10;
    private Vector3 startPositionP10;
    private Vector3 startPositionMP;
    public Text streak;
    public Text Multiplier;

    // Start is called before the first frame update
    void Start()
    {
        startPositionP10 = plus10.rectTransform.position;
        startPositionMP = Multiplier.rectTransform.position;
    }

    // Update is called once per frame
    void Update()
    {        
        

        if (streakTimer < 1 && multiplier > 1)
        {
            multiplier = 1;
            streakTimer = 1;
            streakCount = 0;
            streak.text = "";
        }        

        streakTimer -= Time.smoothDeltaTime;

        
        streak.fontSize = (int)(streakTimer * 3.9f);

        if (streakCount == 10)
        {
            multiplier++;
            multiplierAnimation = true;
            streakCount = 0;
        }

        if (multiplier > 10)
        {
            multiplier = 10;
        }

        if (multiplier > 1)
        {
            streak.text = "x" + multiplier.ToString();
        }
        else
        {
            streak.text = "";
        }

        scoreTotal.text = (score.ToString() + "pt");
        if (scoreGained == true)
        {
            streakTimer = 10f;
            streakCount++;
            plus10animation = true;
            score += scoreAddition * multiplier;
            scoreGained = false;
        }
 
        if (plus10animation == true)
        {
            animTimer -= Time.smoothDeltaTime;
            if (animTimer >= 0)
            {
                plus10.text = ("+" + scoreCombination.ToString() + "!");
                Vector3 goingUp = new Vector3(0f, Time.deltaTime * 20f, 0f);
                plus10.transform.position += goingUp;
                plus10.CrossFadeAlpha(0, 0.5f, false);
            }
            else { plus10animation = false; }
        }

        if (plus10animation == false)
        {
            plus10.text = "";
            animTimer = 1;
            plus10.CrossFadeAlpha(1, 0f, false);
            plus10.rectTransform.position = startPositionP10;
            scoreCombination = scoreAddition * multiplier;
        }

        if (multiplierAnimation == true)
        {
            animTimer2 -= Time.smoothDeltaTime;
            if (animTimer2 >= 0 && multiplier < 10)
            {
                Multiplier.text = ("Multiplier get!");
                Vector3 goingUp = new Vector3(0f, Time.deltaTime * 20f, 0f);
                Multiplier.transform.position += goingUp;
                Multiplier.CrossFadeAlpha(0, 1f, false);
            }
            else { multiplierAnimation = false; }
        }

        if (multiplierAnimation == false)
        {
            Multiplier.text = "";
            animTimer2 = 1;
            Multiplier.CrossFadeAlpha(1, 0f, false);
            Multiplier.rectTransform.position = startPositionMP;
        }
    }
}
