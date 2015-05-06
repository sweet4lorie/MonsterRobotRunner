using UnityEngine;
using System.Collections;

public class SwitchScenes : MonoBehaviour {

	private GameObject player1;
	private GameObject player2;
	private GameObject controller;
	// Use this for initialization
	void Start () {
	
	}

	public void changeScene(string nextScene) {
		player1 = GameObject.Find ("Player1(Clone)");
		player2 = GameObject.Find ("Player2(Clone)");
		controller = GameObject.Find ("GameController");
		Destroy (player1);
		Destroy (player2);
		Destroy (controller);
		PhotonNetwork.LeaveRoom ();
		PhotonNetwork.Disconnect ();
		Application.LoadLevel (nextScene);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
