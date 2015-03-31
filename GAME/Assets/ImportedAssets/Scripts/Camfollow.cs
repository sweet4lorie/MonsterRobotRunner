using UnityEngine;
using System.Collections;

public class Camfollow : MonoBehaviour {

	private GameObject player1;
	private float height;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		player1 = GameObject.Find ("Player1");
		height = (float)player1.transform.position.y;
		if (height >= -2.0f) {
			this.gameObject.transform.position = new Vector3(-1.29f,height,-10.0f);
		}
		else {
			this.gameObject.transform.position = new Vector3(-1.29f,2.67f,-10.0f);
		}
	}
}
