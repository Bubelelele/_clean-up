using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AudioController : MonoBehaviour
{
    public static AudioSource menuMusic, clickSound, gOverOffice, multiplierLost, bucket, superBleach, birdImpact;
    public AudioSource pmenuMusic, pclickSound, pgOverOffice, pmultiplierLost, pbucket, psuperBleach, pbirdImpact;

    private void Update()
    {
        menuMusic = pmenuMusic;
        clickSound = pclickSound;
        gOverOffice = pgOverOffice;
        multiplierLost = pmultiplierLost;
        bucket = pbucket;
        superBleach = psuperBleach;
        birdImpact = pbirdImpact;

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MainMenuScene") && !menuMusic.isPlaying)
        {
            menuMusic.Play();
        }
    }
}
