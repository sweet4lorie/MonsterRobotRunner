using UnityEngine;
using System.Collections;

public class AddinScripts : MonoBehaviour {

	private GameObject[] players;
	private bool starting;

	// Use this for initialization
	void Start () {
		players = GameObject.FindGameObjectsWithTag ("Player");
		starting = false;
	}

	IEnumerator Addscripts() {
		foreach (GameObject player in players) {
			if (player.name == "Player1(Clone)")
				player.AddComponent<DeathScenario> ();
			player.AddComponent<PlayerTether> ();
		}
		this.gameObject.AddComponent<CameraFollow> ();
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
