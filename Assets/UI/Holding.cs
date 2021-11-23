using UnityEngine;
using UnityEngine.SceneManagement;

public class Holding : MonoBehaviour
{
    private Animator holding;
    private float holdRangeXmin = 105f;
    private float holdRangeXmax = 170f;
    private float holdRangeYmin = 145f;
    private float holdRangeYmax = 225f;

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

                holdRangeXmin = 105f;
                holdRangeXmax = 170f;
                holdRangeYmin = 145f;
                holdRangeYmax = 225f;

                arrow_up.SetActive(false);
                arrow_down.SetActive(false);
            }

        if (holding.GetBool("Holding") && Input.mousePosition.y > 300f)
        {
            SceneManager.LoadScene("BuildingRotationMain");
        }
        else if (holding.GetBool("Holding") && Input.mousePosition.y < 40f)
        {
            SceneManager.LoadScene("Leaderboard from Menu");
        }
    }
}
