using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public void PlayGame()
    {
        SceneManager.LoadScene("BuildingRotation");
        PaperMoving.onScreen = false;
        PlayerHealth.isDead = false;
        ScoreController.score = 0;
        PauseMenu.GameIsPaused = false;
        Time.timeScale = 1f;
    }

    public void QuitGame()
    {
        Application.Quit();
        Debug.Log("You have quit the game");
    }


    public void Leaderboard()
    {
        SceneManager.LoadScene(2);
    }
    public void LeaderboardFromMenu()
    {
        SceneManager.LoadScene(3);

    }

    public void LoadMenu()
    {
        SceneManager.LoadScene("MainMenuScene");
    }
}
