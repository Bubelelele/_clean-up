using UnityEngine;
using UnityEngine.SceneManagement;

public class Holding : MonoBehaviour
{
    private Animator holding;
    private float holdRangeXmin = Screen.width * 0.38f;
    private float holdRangeXmax = Screen.width * 0.62f;
    private float holdRangeYmin = Screen.height * 0.29f;
    private float holdRangeYmax = Screen.height * 0.45f;

    public GameObject arrow_up, arrow_down;

    void Awake()
    {
        holding = this.GetComponent<Animator>();
        AnimationManager.isDead = false;
        Time.timeScale = 1f;
    }

    void LateUpdate()
    {
        Debug.Log(Input.mousePosition.x + "," + Input.mousePosition.y);

        if (
                Input.GetMouseButton(0)
                && Input.mousePosition.x > holdRangeXmin
                && Input.mousePosition.x < holdRangeXmax
                && Input.mousePosition.y > holdRangeYmin
                && Input.mousePosition.y < holdRangeYmax
            )
            {
                holding.SetBool("Holding", true);
                transform.position = new Vector3(Input.mousePosition.x, Input.mousePosition.y, 1f);

                holdRangeXmin = Input.mousePosition.x - 50f;
                holdRangeXmax = Input.mousePosition.x + 50f;
                holdRangeYmin = Input.mousePosition.y - 50f;
                holdRangeYmax = Input.mousePosition.y + 50f;

                arrow_up.SetActive(true);
                arrow_down.SetActive(true);
            }
            else
            {
                holding.SetBool("Holding", false);
                transform.position = new Vector3(139f, 185f, 1f);

                holdRangeXmin = Screen.width * 0.38f;
                holdRangeXmax = Screen.width * 0.62f;
                holdRangeYmin = Screen.height * 0.29f;
                holdRangeYmax = Screen.height * 0.45f;

                arrow_up.SetActive(false);
                arrow_down.SetActive(false);
            }

        if (holding.GetBool("Holding") && Input.mousePosition.y > Screen.height * 0.6f)
        {
            SceneManager.LoadScene("BuildingRotationMain");
        }
        else if (holding.GetBool("Holding") && Input.mousePosition.y < Screen.height * 0.08f)
        {
            SceneManager.LoadScene("Leaderboard from Menu");
        }
    }
}
