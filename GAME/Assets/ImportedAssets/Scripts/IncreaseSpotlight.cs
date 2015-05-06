using UnityEngine;
using System.Collections;

public class IncreaseSpotlight : MonoBehaviour {

	private Light mainLight;
	private float lightIncrement;
	private float currentIntensity;
	private float newIntensity;
	private float addOnIntensity = 2;
	
	// Use this for initialization
	void Start () {
		mainLight = GetComponent<Light> ();
		currentIntensity = mainLight.intensity;
		newIntensity = currentIntensity + 2;
		lightIncrement = addOnIntensity / 10;
	}
	
	// Update is called once per frame
	void Update () {
		if (mainLight.intensity < newIntensity) {
			currentIntensity += lightIncrement;
			mainLight.intensity = currentIntensity;
		}
		
		
	}
}
