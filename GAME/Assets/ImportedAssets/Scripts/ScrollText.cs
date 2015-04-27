using UnityEngine;
using System.Collections;

public class ScrollText : MonoBehaviour {

	public float topPosition;
	public float bottomPosition;
	public float increment = 1.0f; 
	private float currentPositionXZ;
	private float currentPositionY;
	private string direction = "down";
	RectTransform rectangle;

	// Use this for initialization
	void Start () {
		rectangle = GetComponent<RectTransform> ();
		currentPositionY = rectangle.anchoredPosition.y;
		currentPositionXZ = 0;
	}

	public void directionTextChange(string newDirection)
	{
		direction = newDirection;
	}
	
	// Update is called once per frame
	void Update () {
		if (direction == "down" && rectangle.anchoredPosition.y < bottomPosition) {
			currentPositionY += increment;
		} else if (direction == "up" && rectangle.anchoredPosition.y > topPosition) {
			currentPositionY -= increment;
		}
		rectangle.anchoredPosition = new Vector3(currentPositionXZ, currentPositionY, currentPositionXZ);
	}
}
