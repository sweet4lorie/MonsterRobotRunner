using UnityEngine;
using System.Collections;

public class Speedboost : MonoBehaviour {

	private float speed;
	private RaycastHit hit;
	public string collide;
	public float height;
	private bool checker;
	// Use this for initialization
	void Start () {
		speed = -0.1f;
		height = 0.0f;
		checker = false;
	}
	
	// Update is called once per frame
	void Update () {

		transform.position += new Vector3 (speed, 0, 0);
		Vector3 downray = transform.TransformDirection (Vector3.down);
		Vector3 upray = transform.TransformDirection (Vector3.up);
		if (Physics.Raycast(transform.position,downray,out hit,10)) {
			collide = hit.collider.gameObject.name;
			Debug.DrawRay(transform.position,downray,Color.green);
			if (collide != "Player2" && collide != "Player1" && collide != "Floor") {
				height = hit.collider.gameObject.transform.position.y + 1.0f;
				if (checker == false) {
					transform.position += new Vector3(0,height,0);
					checker = true;
				}
			}
		}
		else if (Physics.Raycast(transform.position,upray,out hit,10)) {
			collide = hit.collider.gameObject.name;
			Debug.DrawRay(transform.position,upray,Color.red);
			if (collide != "Player2" && collide != "Player1") {
				height = hit.collider.gameObject.transform.position.y + 1.0f;
				if (checker == false) {
					transform.position += new Vector3(0,height,0);
					checker = true;
				}
			}
		}
		if (transform.position.x <= -15.0f)
		{
			transform.position += new Vector3(60.0f,-height,0);
			checker = false;

		}
	}
}
