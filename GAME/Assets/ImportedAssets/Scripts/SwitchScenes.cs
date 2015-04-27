using UnityEngine;
using System.Collections;

public class SwitchScenes : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}

	public void changeScene(string nextScene) {
		Application.LoadLevel (nextScene);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
