using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public void PlayGame()
    {
        SceneManager.LoadScene("BuildingRotation");
        PlayerHealth.isDead = false;
        PauseMenu.GameIsPaused = false;
        Time.timeScale = 1f;        
    }

    public void QuitGame()
    {
        Application.Quit();
        Debug.Log("You have quit the game");
    }
}
