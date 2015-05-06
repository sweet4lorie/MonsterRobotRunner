using UnityEngine;
using System.Collections;

public class AlarmLightingEffect : MonoBehaviour {

	private Light mainLight;
	private float lightIncrement = 0.03125f;
	private float currentColor;
	private string newColor;

	// Use this for initialization
	void Start () {
		mainLight = GetComponent<Light> ();
		mainLight.color = new Color(1, currentColor, currentColor,1);	// sets to white
		newColor = "red";
	}
	
	// Update is called once per frame
	void Update () {
		if (newColor == "red") {
			if (currentColor > 0) {
				currentColor -= lightIncrement;
			} else {
				newColor = "white";
			}
		} else if (newColor == "white") {
			if (currentColor < 1) {
				currentColor += lightIncrement;
			} else {
				newColor = "red";
			}
		}
		mainLight.color = new Color (1, currentColor, currentColor, 1);

	
	}
}
