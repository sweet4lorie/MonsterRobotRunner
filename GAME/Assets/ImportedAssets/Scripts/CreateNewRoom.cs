using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CreateNewRoom : MonoBehaviour {
	
	private Button createRoomButton;
	private InputField inputTextRoomName;
	private GameObject waitText;

	// Use this for initialization
	void Start () {
		PhotonNetwork.ConnectUsingSettings ("0.10");
		createRoomButton = GameObject.Find ("Button").GetComponent<Button>();
		inputTextRoomName = GameObject.Find ("Canvas").GetComponentInChildren<InputField> ();
		waitText = GameObject.Find("Waitingtext");
		waitText.SetActive(false);
	}

	void OnGUI()
	{
		GUILayout.Label(PhotonNetwork.connectionStateDetailed.ToString());
	}

	// called when button is pressed
	public void LoadLevel() {
		// make button not work after you create room
		createRoomButton.interactable = false;
		PhotonNetwork.CreateRoom (inputTextRoomName.text, true, true, 2);
	}

	// Update is called once per frame
	void Update () {
		if (PhotonNetwork.inRoom == true) {

			if (PhotonNetwork.playerList.Length == 2) {
				Application.LoadLevel ("MonsterRobotRunner");
			}
			else {
				waitText.SetActive (true);
			}
		}
	}
}
