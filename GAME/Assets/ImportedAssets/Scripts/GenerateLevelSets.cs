using UnityEngine;
using System.Collections;

public class GenerateLevelSets : MonoBehaviour {

	//models to generate
	public GameObject EasyStart;
	public GameObject Easy1;
	public GameObject Easy2;
	public GameObject Easy3;
	public GameObject MediumStart;
	public GameObject Medium1;
	public GameObject Medium2;
	public GameObject Medium3;
	public GameObject HardStart;
	public GameObject Hard1;
	public GameObject Hard2;
	public GameObject Hard3;

	private GameObject clone;
	private Vector3 spawnlocation;
	public float timer;
	private float timermax;
	public int random;
	public int difficulty;
	public float speed;
	private GameObject player;

	public float normalSpeed = 4.8f;
	public float fastSpeed = 3f;
	private NetworkView nView;

	// Use this for initialization
	void Start () {
		//where each random set spawns at
		spawnlocation = new Vector3 (31, 1, 0);
		timer = 1000;
		timermax = 1000;
		difficulty = 1;
		random = 3;
		speed = normalSpeed;
		nView = GetComponent<NetworkView> ();
		player = GameObject.Find ("Player1(Clone)");
	}

	//Synchronize random number generator throughout network
	[RPC]
	void SyncRandomVariable() {
		random = Random.Range (1, 4);
	}

	void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info) {
		int temprandom = Random.Range (1,4);
		if (stream.isWriting) {
			random = temprandom;
			stream.SendNext(temprandom);
		}
		else {
			temprandom = (int) stream.ReceiveNext();
			random = temprandom;
		}
	}

	//adds a floor tag to each generated building so player can jump on the set
	IEnumerator addTag(Transform trans) {
		trans.gameObject.tag = "Floor";
		if (trans.childCount > 0) {
			foreach (Transform t in trans.transform) {
				addTag(t);
			}
		}
		yield return 0;
	}

	// Update is called once per frame
	void FixedUpdate () {
		//changes difficulty level ||Manual for now||
		if (Input.GetKeyDown (KeyCode.P)) {
			difficulty += 1;
			if (difficulty == 4) {
				difficulty = 1;
			}
			random = 10;
		}
		//Easy difficulty
		if (difficulty == 1) {
			if (timer >= timermax) {
				GUI.Button (new Rect (100, 100, 250, 100), "random = " + random);
				if (random == 1) {
					clone = Instantiate (Easy1, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					//nView.RPC ("SyncRandomVariable", RPCMode.All);
					timermax = 1570;
				}
				else if (random == 2) {
					clone = Instantiate (Easy2, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					//nView.RPC ("SyncRandomVariable", RPCMode.All);
					timermax = 780;
				}
				else if (random == 3) {
					clone = Instantiate (Easy3, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					//nView.RPC ("SyncRandomVariable", RPCMode.All);
					timermax = 1170;
				}
				else if (random == 10) {
					spawnlocation = new Vector3(58,0,0);
					clone = Instantiate (EasyStart, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					spawnlocation = new Vector3(35,0,0);
					timermax = 250;
				}
				timer = 0;
			}
		}
		//Medium difficulty
		if (difficulty == 2) {
			if (timer >= timermax) {
				if (random == 1) {
					clone = Instantiate (Medium1, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 1050;
				}
				else if (random == 2) {
					clone = Instantiate (Medium2, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 1550;
				}
				else if (random == 3) {
					clone = Instantiate (Medium3, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 1050;
				}
				else if (random == 10) {
					spawnlocation = new Vector3(58,0,0);
					clone = Instantiate (MediumStart, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					spawnlocation = new Vector3(35,0,0);
					random = Random.Range (1, 4);
					timermax = 250;
				}
				timer = 0;
			}
		}
		//Hard difficulty
		if (difficulty == 3) {
			if (timer >= timermax) {
				if (random == 1) {
					clone = Instantiate (Hard1, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 600;
				}
				else if (random == 2) {
					clone = Instantiate (Hard2, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 1100;
				}
				else if (random == 3) {
					clone = Instantiate (Hard3, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					random = Random.Range (1, 4);
					timermax = 1630;
				}
				else if (random == 10) {
					spawnlocation = new Vector3(58,0,0);
					clone = Instantiate (HardStart, spawnlocation, Quaternion.identity) as GameObject;
					StartCoroutine(addTag(clone.transform));
					spawnlocation = new Vector3(35,0,0);
					random = Random.Range (1, 4);
					timermax = 250;
				}
				timer = 0;
			}
		}
		timer += speed;
	}
}
