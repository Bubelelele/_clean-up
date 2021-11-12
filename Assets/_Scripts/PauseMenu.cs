using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
    public GameObject tapButton;
    public static bool GameIsPaused = false;

    public GameObject pauseMenuUI;
    public GameObject gameOverUI;
    public GameObject betterScoreGroup;

    public Text points;
    public Text height;
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (GameIsPaused)
            {
                Resume();
            }
            else
            {
                Pause();
            }
        }
        if (Input.GetKeyDown(KeyCode.L))
        {
            EndGame();
        }

    }
    public void Resume()
    {
        pauseMenuUI.SetActive(false);
        Time.timeScale = ScrollingTexture.masterTime;
        GameIsPaused = false;
    }

    void Pause()
    {
        pauseMenuUI.SetActive(true);
        Time.timeScale = 0f;
        GameIsPaused = true;
    }
    public void LoadMenu()
    {
        SceneManager.LoadScene("MainMenuScene");
    }

    public void QuitGame()
    {
        Debug.Log("Quitting game ...");
        Application.Quit();
    }
    public void EndGame()
    {
        gameOverUI.SetActive(true);
        points.text = ScoreController.score.ToString() + "pt";
        height.text = ScrollingTexture.heightTotal;
        Time.timeScale = 0f;
        GameIsPaused = true;
        tapButton.SetActive(false);
        if (ScoreController.score > PlayerPrefs.GetInt("bestScore"))
        {
            betterScoreGroup.SetActive(true);
        }
        else { betterScoreGroup.SetActive(false); }
        Debug.Log("Score: " + ScoreController.score);
        Debug.Log("PP Score: " + PlayerPrefs.GetInt("bestScore"));
    }
}
