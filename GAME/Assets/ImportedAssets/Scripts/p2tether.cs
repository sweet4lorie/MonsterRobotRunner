using UnityEngine;
using System.Collections;

public class p2tether : MonoBehaviour {
	
	private GameObject player1;
	public float Xpos, Ypos;
	public float distX, distY;
	public float speed, speed2;
	public bool check;
	public bool tethered;
	// Use this for initialization
	void Start () {
		speed = 0;
		speed2 = 0;
		check = false;
		tethered = false;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//input timer for tether button
		if (Input.GetKey (KeyCode.R)) {
			player1 = GameObject.Find ("Player1");
			distX = (player1.transform.position.x - transform.position.x) * 1.5f;
			distY = (Mathf.Abs (player1.transform.position.y - transform.position.y)) * 1.5f;
			Xpos = transform.position.x;
			Ypos = transform.position.y;
			check = true;
			tethered = true;
		}
		if (check == true) {
			if (distX > 0) {
				if((transform.position.x - Xpos) < distX) {
					transform.position += new Vector3 (speed, 0, 0);
					speed += 0.01f;
				}
				if(Mathf.Abs(transform.position.y - Ypos) < distY) {
					transform.position += new Vector3 (0,speed2, 0);
					speed2 += 0.01f;
				}
				if ((transform.position.x - Xpos) >= distX) {
					speed = 0;
					speed2 = 0;
					check = false;
				}
				if (Mathf.Abs(transform.position.y - Ypos) >= distY) {
					speed2 = 0;
				}
			}
			else {
				if((transform.position.x - Xpos) > distX) {
					transform.position += new Vector3 (speed, 0, 0);
					speed -= 0.01f;
				}
				if(Mathf.Abs(transform.position.y - Ypos) < distY) {
					transform.position += new Vector3 (0,speed2, 0);
					speed2 += 0.01f;
				}
				if ((transform.position.x - Xpos) <= distX) {
					speed = 0;
					check = false;
					tethered = false;
				}
				if (Mathf.Abs(transform.position.y - Ypos) >= distY) {
					speed2 = 0;
				}
			}
		}
	}
}
