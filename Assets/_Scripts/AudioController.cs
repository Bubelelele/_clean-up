using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AudioController : MonoBehaviour
{
    public static AudioSource menuMusic, clickSound;
    public AudioSource pmenuMusic, pclickSound;

    private void Update()
    {
        menuMusic = pmenuMusic;
        clickSound = pclickSound;
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MainMenuScene") && !menuMusic.isPlaying)
        {
            menuMusic.Play();
        }
    }
}
