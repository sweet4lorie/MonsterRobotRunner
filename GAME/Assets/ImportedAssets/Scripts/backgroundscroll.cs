using UnityEngine;
using System.Collections;

public class BackgroundScroll : MonoBehaviour {
	
	public string playername = "Player1(Clone)";
	public float normalSpeed = 0.1f;
	public float fastSpeed = 0.5f;
	public float speed;
	// Use this for initialization
	void Start () {
		speed = normalSpeed;
	}
	
	// Update is called once per frame
	void Update () {
		//check player's height and match accordingly
		GameObject player = GameObject.Find (playername);
		if (player.transform.position.y < 80.0f) {
			transform.position = new Vector3 (0,(player.transform.position.y - 2.5f), 4.2f);
		}
		else {
			transform.position = new Vector3 (0, -2.5f, 4.2f);
		}
		float offset = Time.time * speed;
		renderer.material.SetTextureOffset ("_MainTex", new Vector2 (offset, 0));
	}
}
