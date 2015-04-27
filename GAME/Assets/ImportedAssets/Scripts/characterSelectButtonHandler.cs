using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class characterSelectButtonHandler : MonoBehaviour {

	private Animator panelAnimator;
	private Light topLight;
	private Light iconLight;

	public string sceneChange;
	private int characterSelected = -1;
	private float animationDuration = 1.05f;
	private float addOnIntensity = 6.0f;
	private float lightIncrement;
	private Dictionary<string, float> topLightValue = new Dictionary<string, float>();
	private Dictionary<string, float> iconLightValue = new Dictionary<string, float>();
	
	// Use this for initialization
	void Start () {
		// duration of end animation
		panelAnimator = GetComponent<Animator> ();
		panelAnimator.SetBool ("Selected", false);
		sceneChange = "NetworkConnect";
		lightIncrement = addOnIntensity / 10;
	}
	
	// after Character is selected, initiate values for lights
	public void characterButton (int character) {
		characterSelected = character;

		GameObject[] characterObjects;
		characterObjects = GameObject.FindGameObjectsWithTag("SelectionChar" + character);
		foreach(GameObject obj in characterObjects) {
			if (obj.transform.name == "Icon_Spotlight") {
				Debug.Log ("Icon Spotlight");
				iconLight = obj.GetComponent<Light>();
				iconLightValue.Add ("intensity", iconLight.intensity);
				iconLightValue.Add ("newIntensity", iconLight.intensity + addOnIntensity);
			} else if (obj.transform.name == "Top_Spotlight") {
				Debug.Log ("Top Spotlight");
				topLight = obj.GetComponent<Light>();
				topLightValue.Add ("intensity", topLight.intensity);
				topLightValue.Add ("newIntensity", iconLight.intensity + addOnIntensity);
			}
		}
	}

	// scene change and animation for character before change
	IEnumerator animateChangeScene() {
		panelAnimator.SetBool ("Selected", true);
		yield return new WaitForSeconds (animationDuration);
		Application.LoadLevel (sceneChange);
	}

	// increases lights' intensity
	IEnumerator lightIncrease(Light mainLight, Dictionary<string, float> lightDict) {
		if (mainLight.intensity < lightDict["newIntensity"]) {
			lightDict["intensity"] += lightIncrement;
			mainLight.intensity = lightDict["intensity"];
		}
		yield return 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (characterSelected != -1) {
			StartCoroutine (animateChangeScene());
			StartCoroutine (lightIncrease(iconLight, iconLightValue));
			StartCoroutine (lightIncrease(topLight, topLightValue));
		}
		
		
	}
}
