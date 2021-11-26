using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AudioController : MonoBehaviour
{
    public static AudioSource menuMusic, clickSound, gOverOffice, multiplierLost, bucket, superBleach, birdImpact, janitorRockstar;
    public AudioSource pmenuMusic, pclickSound, pgOverOffice, pmultiplierLost, pbucket, psuperBleach, pbirdImpact, pjanitorRockstar;

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

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("MainMenuUIScene") && !menuMusic.isPlaying)
        {
            menuMusic.Play();
        }
    }
}
