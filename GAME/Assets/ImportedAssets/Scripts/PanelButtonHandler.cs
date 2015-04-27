using UnityEngine;
using System.Collections;

public class PanelButtonHandler : MonoBehaviour {

	private Animator panelAnimator;
	public string sceneChange = "";

	// Use this for initialization
	void Start () {
		panelAnimator = GetComponent<Animator> ();
		panelAnimator.SetBool ("startButtonPressed", false);
	}

	// change scenes
	public void startButton (string scene) {
		sceneChange = scene;
	}

	IEnumerator animateChangeScene() {
		panelAnimator.SetBool ("startButtonPressed", true);
		yield return new WaitForSeconds (0.63f);
		Application.LoadLevel (sceneChange);
	}

	// Update is called once per frame
	void Update () {
		if (sceneChange != "") {
			StartCoroutine (animateChangeScene());
		}

	
	}
}
