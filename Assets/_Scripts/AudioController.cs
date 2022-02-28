using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AudioController : MonoBehaviour
{
    public static AudioSource menuMusic, clickSound, gOverOffice, multiplierLost, bucket, superBleach, birdImpact, janitorRockstar, gameLoop;
    public AudioSource pmenuMusic, pclickSound, pgOverOffice, pmultiplierLost, pbucket, psuperBleach, pbirdImpact, pjanitorRockstar, pgameLoop;

    private void Update()
    {
        menuMusic = pmenuMusic;
        clickSound = pclickSound;
        gOverOffice = pgOverOffice;
        multiplierLost = pmultiplierLost;
        bucket = pbucket;
        superBleach = psuperBleach;
        birdImpact = pbirdImpact;
        janitorRockstar = pjanitorRockstar;
        gameLoop = pgameLoop;

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MenuScene"))
        {
            gameLoop.Stop();
            if(!menuMusic.isPlaying)
            {
                menuMusic.Play();
            }
        }

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("BuildingRotationMainTesting") && !gameLoop.isPlaying)
        {
            menuMusic.Stop();
            gameLoop.Play();
        }

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("GameLeaderboardScene") || SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MenuLeaderboardScene"))
        {
            if(!menuMusic.isPlaying)
            {
                menuMusic.Play();
            }
            gameLoop.Stop();
        }

        if (AnimationManager.isDead == true || JanitorRockstar.rockstarActivated == true)
        {
            gameLoop.Stop();
            menuMusic.Stop();
        }
    }
}
