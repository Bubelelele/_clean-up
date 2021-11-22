using UnityEngine;

public class Holding : MonoBehaviour
{
    private Animator holding;
    private float holdRangeXmin = 100f;
    private float holdRangeXmax = 400f;
    private float holdRangeYmin = 100f;
    private float holdRangeYmax = 400f;

    void Awake()
    {
        holding = this.GetComponent<Animator>();
    }

    void LateUpdate()
    {
        Debug.Log(Input.mousePosition.x + "," + Input.mousePosition.y);

        if (
                Input.GetMouseButton(0)
                && Input.mousePosition.x >= holdRangeXmin
                && Input.mousePosition.x <= holdRangeXmax
                && Input.mousePosition.y >= holdRangeYmin
                && Input.mousePosition.y <= holdRangeYmax
            )
            {
                holding.SetBool("Holding", true);
                transform.position = new Vector3(Input.mousePosition.x, Input.mousePosition.y, 1f);

                holdRangeXmin = Input.mousePosition.x - 50f;
                holdRangeXmax = Input.mousePosition.x + 50f;
                holdRangeYmin = Input.mousePosition.y - 50f;
                holdRangeYmax = Input.mousePosition.y + 50f;
            }
            else
            {
                holding.SetBool("Holding", false);
                transform.position = new Vector3(139f, 185f, 1f);

                holdRangeXmin = 109f;
                holdRangeXmax = 149f;
                holdRangeYmin = 155f;
                holdRangeYmax = 195f;
            }
    }
}
