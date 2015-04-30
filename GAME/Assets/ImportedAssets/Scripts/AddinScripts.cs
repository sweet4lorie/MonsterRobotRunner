using UnityEngine;
using System.Collections;

public class AddinScripts : MonoBehaviour {

	private GameObject player;
	private GameObject scoreText;
	private bool starting;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
		scoreText = GameObject.Find ("ScoreText");
		starting = false;
	}

	IEnumerator Addscripts() {
		player.AddComponent<DeathScenario> ();
		this.gameObject.AddComponent<CameraFollow> ();
		scoreText.AddComponent<ScoreUpdater> ();
		yield return new WaitForSeconds (1.0f);
	}

	// Update is called once per frame
	void Update () {
		if (starting == false) {
			StartCoroutine(Addscripts());
			starting = true;
		}
	}
}
