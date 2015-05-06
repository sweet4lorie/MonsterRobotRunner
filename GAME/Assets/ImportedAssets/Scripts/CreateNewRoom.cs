using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CreateNewRoom : MonoBehaviour {
	
	private Button createRoomButton;
	private InputField inputTextRoomName;
	private GameObject waitText;
	private GameObject myplayer;
	private GameObject otherplayer;
	// Use this for initialization
	void Start () {
		PhotonNetwork.ConnectUsingSettings ("0.10");
		createRoomButton = GameObject.Find ("Button").GetComponent<Button>();
		inputTextRoomName = GameObject.Find ("Canvas").GetComponentInChildren<InputField> ();
		waitText = GameObject.Find("Waitingtext");
		waitText.SetActive(false);
	}

	// called when button is pressed
	public void LoadLevel() {
		// make button not work after you create room
		createRoomButton.interactable = false;
		PhotonNetwork.CreateRoom (inputTextRoomName.text, true, true, 2);
	}

	IEnumerator P2waitfunction () {
		yield return new WaitForSeconds (0.7f);
		otherplayer = GameObject.Find ("H_Monster_Prefab(Clone)");
		if (otherplayer == null) {
			otherplayer = GameObject.Find ("H_Robot_Prefab(Clone)");
			if (otherplayer == null) {
				otherplayer = GameObject.Find ("J_Robot_Prefab(Clone)");
			}
		}
		otherplayer.name = "Player2(Clone)";
	}

	IEnumerator Countdown () {
		yield return new WaitForSeconds (0.7f);
		Application.LoadLevel ("MonsterRobotRunner");
	}
	// Update is called once per frame
	void Update () {
		if (PhotonNetwork.inRoom == true) {
			if (PhotonNetwork.playerList.Length == 2) {
				myplayer = GameObject.Find("Player1(Clone)");
				if (myplayer == null) {
					otherplayer = GameObject.Find ("H_Monster_Prefab(Clone)");
					if (otherplayer == null) {
						otherplayer = GameObject.Find ("H_Robot_Prefab(Clone)");
					}
					otherplayer.name = "Player1(Clone)";
				}
				else {
					StartCoroutine(P2waitfunction());
				}
				StartCoroutine(Countdown());
			}
			else {
				waitText.SetActive (true);
			}
		}
	}
}
