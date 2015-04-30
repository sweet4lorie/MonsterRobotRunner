using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections.Generic;

public class NetworkControl : MonoBehaviour {

	public RoomInfo[] rooms = null;
	private List<GameObject> serverList;
	private GameObject scroll;
	private GameObject selectedObject;
	private Color unselectedColor; 
	private Transform panel;
	private string characterString;
	private PersistantGameManager gameManager;

	// Use this for initialization
	void Start () {
		PhotonNetwork.ConnectUsingSettings ("0.10");
		gameManager = GameObject.Find ("GameController").GetComponent<PersistantGameManager>();
		characterString = gameManager.characterSelectedString;
	}

	void OnGUI()
	{
		GUILayout.Label(PhotonNetwork.connectionStateDetailed.ToString());
	}

	public void OnEnable() {
		if(serverList == null)
		{
			panel = transform.FindChild("AreaPanel");
			scroll = transform.FindChild("Scrollbar").gameObject;
			serverList = new List<GameObject>();
			unselectedColor = new Color(80/255.0f, 250/255.0f, 100/255.0f, 1);
		}
		InvokeRepeating("PopulateServerList", 1, 2);
	}

	public void OnDisable() {
		CancelInvoke ();
	}

	public void PopulateServerList()
	{
		int i = 0;
		RoomInfo[] hostData = PhotonNetwork.GetRoomList();

		int selected = serverList.IndexOf(selectedObject);
		
		for(int j = 0; j < serverList.Count; j++)
		{
			Destroy(serverList[j]);
		}
		serverList.Clear();
		
		if(null != hostData)
		{
			for(i = 0; i < hostData.Length; i++)
			{
				if(!hostData[i].open)
					continue;
				
				GameObject text = (GameObject)Instantiate(Resources.Load("RoomButton"));
				serverList.Add(text);
				text.transform.SetParent(panel, false);
				text.transform.FindChild("Text").GetComponent<Text>().text = hostData[i].name;
				text.GetComponent<RectTransform>().anchoredPosition = new Vector3(0,230 + (i * -70), 0);
			}
		}
		if((i * -25) < -290)
		{
			//panel.GetComponent<RectTransform>().sizeDelta = new Vector2(200, (i * 25) + 30);
			scroll.SetActive(true);
		}
		else
		{
			panel.GetComponent<RectTransform>().sizeDelta = new Vector2(0, 0);
			scroll.SetActive(false);
		}
		if(selected >= 0 && selected < serverList.Count)
		{
			selectedObject = serverList[selected];
			selectedObject.transform.GetComponent<Image>().color = Color.white;
		}
	}

	void OnCreatedRoom() {
		Debug.Log ("WOOT!"+PhotonNetwork.room.name);
	}

	void OnPhotonRandomJoinFailed()
	{
		Debug.Log("Can't join random room");
	}

	void OnJoinedRoom() {
		GameObject monster = PhotonNetwork.Instantiate(characterString + "_Prefab", new Vector3(-1f,0.5f,0), Quaternion.identity,0);
	}

	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Mouse0))
		{
			GameObject server = EventSystem.current.currentSelectedGameObject;
			if(server != null)
			{
				if(server.name == "RoomButton(Clone)")
				{
					if(selectedObject != null)
						selectedObject.transform.GetComponent<Image>().color = unselectedColor;
					
					selectedObject = server.transform.gameObject;
					selectedObject.GetComponent<Image>().color = Color.white;
					Debug.Log (server.transform.FindChild("Text").GetComponent<Text>().text);
					PhotonNetwork.JoinRoom(server.transform.FindChild("Text").GetComponent<Text>().text);
				}
			}
		}
	}
}
