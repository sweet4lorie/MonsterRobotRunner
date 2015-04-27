using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CreateNewRoom : MonoBehaviour {
	
	private string roomname;
	private Transform waittext;
	// Use this for initialization
	void Start () {
		PhotonNetwork.ConnectUsingSettings ("0.10");
	}

	void OnGUI()
	{
		GUILayout.Label(PhotonNetwork.connectionStateDetailed.ToString());
	}

	public void LoadLevel() {
		roomname = GameObject.Find ("Canvas").GetComponentInChildren<InputField> ().text;
		PhotonNetwork.CreateRoom (roomname,true,true,2);
	}

	// Update is called once per frame
	void Update () {
		if (PhotonNetwork.inRoom == true) {
			if (PhotonNetwork.playerList.Length == 2) {
				Application.LoadLevel ("MonsterRobotRunner");
			}
			else {
				waittext = transform.FindChild("Waitingtext");
				waittext.GetComponent<RectTransform>().anchoredPosition = new Vector3(0f,130f,0f);
			}
		}
	}
}
