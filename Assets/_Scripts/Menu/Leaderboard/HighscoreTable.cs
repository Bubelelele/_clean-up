/* 
    ------------------- Code Monkey -------------------

    Thank you for downloading this package
    I hope you find it useful in your projects
    If you have any questions let me know
    Cheers!

               unitycodemonkey.com
    --------------------------------------------------
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class HighscoreTable : MonoBehaviour
{

    private Transform entryContainer;
    private Transform entryTemplate;
    private List<Transform> highscoreEntryTransformList;
    public InputField displayScore;
    public InputField getName;
    public Button submitButton;
    public static string scoreCombination;
    public RectTransform scrollSize;

    private void Awake()
    {
        getName.text = PlayerPrefs.GetString("lastName", "");
        scoreCombination = PlayerPrefs.GetInt("score").ToString() + "pts, " + PlayerPrefs.GetInt("height").ToString() + "m";
        displayScore.text = scoreCombination;

        entryContainer = transform.Find("Mask").Find("highscoreEntryContainer");
        entryTemplate = entryContainer.Find("highscoreEntryTemplate");

        entryTemplate.gameObject.SetActive(false);

        string jsonString = PlayerPrefs.GetString("highscoreTable");
        Highscores highscores = JsonUtility.FromJson<Highscores>(jsonString);

        if (highscores == null)
        {
            // There's no stored table, initialize
            Debug.Log("Initializing table with default values...");
            /*          AddHighscoreEntry(1000000, "CMK");
                        AddHighscoreEntry(897621, "JOE");
                        AddHighscoreEntry(872931, "DAV");
                        AddHighscoreEntry(785123, "CAT");
                        AddHighscoreEntry(542024, "MAX");
                        AddHighscoreEntry(68245, "AAA"); */
            // Reload
            jsonString = PlayerPrefs.GetString("highscoreTable");
            highscores = JsonUtility.FromJson<Highscores>(jsonString);
        }

        // Sort entry list by Score
        for (int i = 0; i < highscores.highscoreEntryList.Count; i++)
        {
            for (int j = i + 1; j < highscores.highscoreEntryList.Count; j++)
            {
                if (highscores.highscoreEntryList[j].score > highscores.highscoreEntryList[i].score)
                {
                    // Swap
                    HighscoreEntry tmp = highscores.highscoreEntryList[i];
                    highscores.highscoreEntryList[i] = highscores.highscoreEntryList[j];
                    highscores.highscoreEntryList[j] = tmp;
                }
            }
        }

        PlayerPrefs.SetInt("bestScore", highscores.highscoreEntryList[0].score);

        //highscores.highscoreEntryList.RemoveRange(5, highscores.highscoreEntryList.Count - 5);

        highscoreEntryTransformList = new List<Transform>();

        foreach (HighscoreEntry highscoreEntry in highscores.highscoreEntryList)
        {
            CreateHighscoreEntryTransform(highscoreEntry, entryContainer, highscoreEntryTransformList);
        }

        scrollSize.sizeDelta = new Vector2(512f, highscoreEntryTransformList.Count * 100 - 50);
    }

    private void CreateHighscoreEntryTransform(HighscoreEntry highscoreEntry, Transform container, List<Transform> transformList)
    {
        float templateHeight = 100f;
        Transform entryTransform = Instantiate(entryTemplate, container);
        RectTransform entryRectTransform = entryTransform.GetComponent<RectTransform>();
        entryRectTransform.anchoredPosition = new Vector2(0, -templateHeight * transformList.Count);
        entryTransform.gameObject.SetActive(true);

        int rank = transformList.Count + 1;
        string rankString;
        switch (rank)
        {
            default:
                rankString = rank + "TH"; break;

            case 1: rankString = "1ST"; break;
            case 2: rankString = "2ND"; break;
            case 3: rankString = "3RD"; break;
        }

        entryTransform.Find("posText").GetComponent<Text>().text = rankString;

        int score = highscoreEntry.score;
        entryTransform.Find("scoreText").GetComponent<Text>().text = score.ToString();

        int height = highscoreEntry.height;
        entryTransform.Find("heightText").GetComponent<Text>().text = height.ToString();

        string name = highscoreEntry.name;
        entryTransform.Find("nameText").GetComponent<Text>().text = name;

        // Set background visible odds and evens, easier to read
        //entryTransform.Find("background").gameObject.SetActive(rank % 2 == 1);

        // Highlight First
        if (rank == 1)
        {
            entryTransform.Find("posText").GetComponent<Text>().color = Color.white;
            entryTransform.Find("scoreText").GetComponent<Text>().color = Color.white;
            entryTransform.Find("nameText").GetComponent<Text>().color = Color.white;
            entryTransform.Find("heightText").GetComponent<Text>().color = Color.white;
        }

        // Set tropy
        switch (rank)
        {
            default:
                entryTransform.Find("trophy").gameObject.SetActive(false);
                entryTransform.Find("Crown").gameObject.SetActive(false);
                break;
            case 1:
                entryTransform.Find("trophy").GetComponent<Image>().color = Color.yellow;
                entryTransform.Find("Crown").gameObject.SetActive(true);
                break;
            case 2:
                entryTransform.Find("trophy").GetComponent<Image>().color = Color.white;
                entryTransform.Find("Crown").gameObject.SetActive(false);
                break;
            case 3:
                entryTransform.Find("trophy").GetComponent<Image>().color = Color.grey;
                entryTransform.Find("Crown").gameObject.SetActive(false);
                break;

        }

        transformList.Add(entryTransform);
    }

    public void SubmitButton()
    {
        PlayerPrefs.SetString("lastName", getName.text);
        AddHighscoreEntry(PlayerPrefs.GetInt("score"), PlayerPrefs.GetInt("height"), getName.text);
        string jsonString = PlayerPrefs.GetString("highscoreTable");
        Highscores highscores = JsonUtility.FromJson<Highscores>(jsonString);
        SceneManager.LoadScene(3);
    }
    public void AddHighscoreEntry(int score, int height, string name)
    {
        // Create HighscoreEntry
        HighscoreEntry highscoreEntry = new HighscoreEntry { score = score, height = height, name = name };

        // Load saved Highscores
        string jsonString = PlayerPrefs.GetString("highscoreTable");
        Highscores highscores = JsonUtility.FromJson<Highscores>(jsonString);

        if (highscores == null)
        {
            // There's no stored table, initialize
            highscores = new Highscores()
            {
                highscoreEntryList = new List<HighscoreEntry>()
            };
        }

        // Add new entry to Highscores

        highscores.highscoreEntryList.Add(highscoreEntry);

        // Save updated Highscores
        string json = JsonUtility.ToJson(highscores);
        PlayerPrefs.SetString("highscoreTable", json);
        PlayerPrefs.Save();
    }

    private class Highscores
    {
        public List<HighscoreEntry> highscoreEntryList;
    }

    /*
     * Represents a single High score entry
     * */
    [System.Serializable]
    private class HighscoreEntry
    {
        public int score;
        public int height;
        public string name;
    }

}
