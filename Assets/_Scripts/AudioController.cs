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

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MenuScene") && !menuMusic.isPlaying)
        {
            menuMusic.Play();
        }

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("GameScene") && !gameLoop.isPlaying)
        {
            gameLoop.Play();
        }

        if (AnimationManager.isDead == true || JanitorRockstar.rockstarActivated == true)
        {
            gameLoop.Stop();
        }
    }
}
