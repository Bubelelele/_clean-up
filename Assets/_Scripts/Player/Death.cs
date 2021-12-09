using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Death : MonoBehaviour
{
    public GameObject pauseMenu;
    public GameObject playerHandler;

    void GameOver()
    {
        pauseMenu.GetComponent<PauseMenu>().EndGame();
        playerHandler.transform.position = new Vector3(0, 0, -6.8f);
        PaperMoving.onScreen = false;
    }
}
