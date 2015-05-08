using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PersistantGameManager : MonoBehaviour {
	
	public string characterSelectedString = "";
	public Dictionary<int, string> player = new Dictionary<int, string>();
	public int thisPlayerNum;
	public string thisPlayer;
	public string otherPlayer;
	
	// Use this for initialization
	void Start () {
		player [1] = "Player1(Clone)";
		player [2] = "Player2(Clone)";
		thisPlayer = player [1];
		otherPlayer = player [2];
	}
	
	public void characterButton (string character) {
		characterSelectedString = character;
	}
	
	public void setOtherPlayer()
	{
		int otherPlayerNum = 1;
		if (thisPlayerNum == 1) {
			otherPlayerNum = 2;
			thisPlayer = player [1];
			otherPlayer = player[2];
		}
		else if (thisPlayerNum == 2) {
			otherPlayerNum = 1;
			thisPlayer = player [2];
			otherPlayer = player[1];
		}
		
		GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
		foreach (GameObject one in players) {
			if (one.name != player[thisPlayerNum])
			{
				one.name = player[otherPlayerNum];
				otherPlayer = player[otherPlayerNum];
			}
		}
	}
	
	public void reset()
	{
		characterSelectedString = "";
		thisPlayer = "";
		otherPlayer = "";
	}
	
	// Make this game object and all its transform children
	// survive when loading a new scene.
	void Awake() {
		DontDestroyOnLoad(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

