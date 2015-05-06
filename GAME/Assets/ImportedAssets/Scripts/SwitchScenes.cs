using UnityEngine;
using System.Collections;

public class SwitchScenes : MonoBehaviour {

	private GameObject player1;
	private GameObject player2;
	private GameObject controller;
	private PersistantGameManager gameManager;
	private GameObject icon;
	private string characterString;

	// Use this for initialization
	void Start () {
		controller = GameObject.Find ("GameController");
	}

	public void endGameChange(string nextScene) {
		gameManager = controller.GetComponent<PersistantGameManager>();
		player1 = GameObject.Find (gameManager.thisPlayer);
		player2 = GameObject.Find ("Player2(Clone)");
		icon = GameObject.Find ("ICON");
		Destroy (player1);
		Destroy (player2);
		Destroy (controller);
		Destroy (icon);
		PhotonNetwork.LeaveRoom ();
		PhotonNetwork.Disconnect ();
		Application.LoadLevel (nextScene);
	}

	public void basicChangeScene(string nextScene) {
		Application.LoadLevel (nextScene);
	}

	public void noNetworkSwitch (string nextScene){
		gameManager = controller.GetComponent<PersistantGameManager>();
		gameManager.otherPlayer = "Player2(Clone)";
		gameManager.thisPlayer = "Player1(Clone)";
		Debug.Log (gameManager.thisPlayer);
		characterString = gameManager.characterSelectedString;
		GameObject monster = Instantiate(Resources.Load (characterString + "_Prefab")) as GameObject;
		monster.transform.position = new Vector3 (-1f, 0.5f, 0);
		monster.name = "Player1(Clone)";

		// pointer
		GameObject point = Instantiate(Resources.Load("Pointer_Prefab")) as GameObject;
		point.transform.position = new Vector3(monster.transform.position.x, monster.transform.position.y + 1.5f,monster.transform.position.z);
		point.transform.parent = monster.transform;

		Application.LoadLevel (nextScene);
	}

	// Update is called once per frame
	void Update () {
	
	}
}
