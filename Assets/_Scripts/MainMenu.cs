using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public void PlayGame()
    {
        AudioController.menuMusic.mute = true;
        AudioController.clickSound.Play();
        SceneManager.LoadScene("BuildingRotationMain");
        PaperMoving.onScreen = false;
        AnimationManager.isDead = false;
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
        AudioController.clickSound.Play();
        SceneManager.LoadScene(2);
    }
    public void LeaderboardFromMenu()
    {
        AudioController.clickSound.Play();
        SceneManager.LoadScene(3);

    }

    public void LoadMenu()
    {
        AudioController.clickSound.Play();
        SceneManager.LoadScene("MainMenuScene");
    }
}
