using UnityEngine;
using System.Collections;

public class p1tether : MonoBehaviour {

	private GameObject player1;
	private GameObject background;
	private backgroundscroll scroll;
	private float Xpos, Ypos;
	public float distX, distY;
	public float speed, speed2;
	public bool check;
	// Use this for initialization
	void Start () {
		speed = 0;
		speed2 = 0;
		check = false;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//input timer for tether button
		player1 = GameObject.Find ("Player2");
		if ((Input.GetKey (KeyCode.E))&&(player1.transform.position.x > transform.position.x)) {
					distX = (Mathf.Abs (player1.transform.position.x - transform.position.x)) * 1.5f;
					distY = (Mathf.Abs (player1.transform.position.y - transform.position.y)) * 1.5f;
					Xpos = transform.position.x;
					Ypos = transform.position.y;
					check = true;
				}
		if (check == true) {
			if (transform.position.x >= 0) {
			//if ((player1.transform.position.x >= 0) && (Mathf.Abs(transform.position.x)>Mathf.Abs(player1.transform.position.x)) {
				player1.transform.position -= new Vector3 (speed,0,0);
				background = GameObject.Find("Backdrop1");
				scroll = background.GetComponent<backgroundscroll>();
				scroll.speed = 1.5f;
				speed += 0.01f;
			}
			else {
				if(Mathf.Abs(transform.position.x - Xpos) < distX) {
					transform.position += new Vector3 (speed, 0, 0);
					speed += 0.01f;
				}
			}
			if(Mathf.Abs(transform.position.y - Ypos) < distY) {
				transform.position += new Vector3 (0,speed2, 0);
				speed2 += 0.01f;
			}
			if ((Mathf.Abs(transform.position.x - Xpos) >= distX)||(transform.position.x - player1.transform.position.x >= (distX/3))) {
				speed = 0;
				check = false;
				background = GameObject.Find("Backdrop1");
				scroll = background.GetComponent<backgroundscroll>();
				scroll.speed = 0.5f;
			}
			if (Mathf.Abs(transform.position.y - Ypos) >= distY) {
				speed2 = 0;
			}
				}
	}
}
