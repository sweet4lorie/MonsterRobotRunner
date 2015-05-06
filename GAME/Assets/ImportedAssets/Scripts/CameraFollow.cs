using UnityEngine;
using System.Collections;

public class CameraFollow: MonoBehaviour {

	// default labels
	private PersistantGameManager gameManager;
	private string characterString;
	private GameObject player;
	public float height;

	private float minHeight = -2.0f;
	private float maxHeight = 80.0f;
	private float defaultX;
	private float defaultY;
	private float defaultZ;

	// Use this for initialization
	void Start () {
		gameManager = GameObject.Find ("GameController").GetComponent<PersistantGameManager>();
		characterString = gameManager.characterSelectedString;

		defaultX = Camera.main.gameObject.transform.position.x;
		defaultY = Camera.main.gameObject.transform.position.y;
		defaultZ = Camera.main.gameObject.transform.position.z;
	}
	
	// Update is called once per frame
	void Update () {
		//find player1 and follow his height
		player = GameObject.Find (characterString);
		if (player.GetComponent<PhotonView>().isMine) {
			height = (float)player.transform.position.y;
		}
		//if player drops and falls, reset camera to default
		if ((height >= minHeight)&&(height <= maxHeight)) {
			this.gameObject.transform.position = new Vector3(defaultX, height, defaultZ);
		}
		else {
			this.gameObject.transform.position = new Vector3(defaultX, defaultY, defaultZ);
		}
	}
}
