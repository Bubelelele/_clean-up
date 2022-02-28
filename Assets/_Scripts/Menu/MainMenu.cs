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
        Time.timeScale = 1f;
        MasterTime.masterTime = 1.0f;
        MasterTime.characterTime = 1.25f;
        PaperMoving.onScreen = false;
        AnimationManager.isDead = false;
        ScoreController.score = 0;
        PauseMenu.GameIsPaused = false;
        SceneManager.LoadScene("BuildingRotationMainTesting");
    }

    public void QuitGame()
    {
        Application.Quit();
        Debug.Log("You have quit the game");
    }


    public void Leaderboard()
    {
        AudioController.clickSound.Play();
        SceneManager.LoadScene(3);
    }
    public void LeaderboardFromMenu()
    {
        AudioController.clickSound.Play();
        SceneManager.LoadScene(1);

    }

    public void LoadMenu()
    {
        MasterTime.masterTime = 1.0f;
        MasterTime.characterTime = 1.25f;        
        AnimationManager.isDead = false;
        PaperMoving.onScreen = false;
        Time.timeScale = 1f;
        AudioController.clickSound.Play();
        SceneManager.LoadScene("MenuScene");
    }
}
