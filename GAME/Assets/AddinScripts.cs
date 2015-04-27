using UnityEngine;
using System.Collections;

public class AddinScripts : MonoBehaviour {

	private bool starting;
	// Use this for initialization
	void Start () {
		starting = false;
	}

	IEnumerator Addscripts() {
		GameObject player = GameObject.FindGameObjectWithTag ("Player");
		player.AddComponent<DeathScenario> ();
		this.gameObject.AddComponent<CameraFollow> ();
		GameObject scoretext = GameObject.Find ("ScoreText");
		scoretext.AddComponent<ScoreUpdater> ();
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
