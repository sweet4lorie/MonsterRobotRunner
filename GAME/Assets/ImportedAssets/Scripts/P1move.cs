using UnityEngine;
using System.Collections;

public class P1move : MonoBehaviour {

	private Animator animator;

	private Vector3 forward = new Vector3(0, 0, 5);
	private Vector3 side = new Vector3(5, 0, 0);
	private Vector3 up = new Vector3(0, 8, 0);
	private Vector3 extragrav = new Vector3(0,-13,0);
	public bool isgrounded;
	private RaycastHit hit;
	public string collide;
	// Use this for initialization	
	void Start () {
		animator = GetComponent<Animator>();
		animator.SetBool("Jump", false);
	}

	//Speed boost
	IEnumerator Speedbump() {
		GameObject background;
		GameObject generator;
		//Boost foreground speed for all generated obstacles
		foreach(GameObject check in GameObject.FindGameObjectsWithTag ("Floor")) {
			if (check.GetComponent<DestroySetEasy>() != null) {
				check.GetComponent<DestroySetEasy>().speed = -0.3f;
			}
		}

		//boost gen object speed while using powerup
		generator = GameObject.Find ("Floor");
		generator.GetComponent<GenObstacles> ().speed = 3;
		
		//Boost background speed
		background = GameObject.Find ("Backdrop1");
		background.GetComponent<backgroundscroll> ().speed = 1.1f;
		yield return new WaitForSeconds (0.5f);
		//Undo boosted speed for foreground
		foreach(GameObject check in GameObject.FindGameObjectsWithTag ("Floor")) {
			if (check.GetComponent<DestroySetEasy>() != null) {
				check.GetComponent<DestroySetEasy>().speed = -0.1f;
			}
		}
		//undo boost to gen object speed
		generator.GetComponent<GenObstacles> ().speed = 1;
		//Undo boosted speed for background
		background.GetComponent<backgroundscroll> ().speed = 0.5f;
	}

	//block powerup function
	IEnumerator Block() {
		GameObject player1, player2, cube;
		cube = GameObject.Find("Cube");
		player1 = GameObject.Find ("Player1");
		player2 = GameObject.Find ("Player2");
		//if either player is being tethered then let pass
		if ((player1.GetComponent<p1tether>().tethered == true) || (player2.GetComponent<p2tether>().tethered == true)) {
			cube.layer = 9;
		}
		yield return new WaitForSeconds (4.0f);
		cube.layer = 8;
	}

	void OnCollisionEnter (Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			animator.SetBool("Jump", false);
		}
		//check for collision with block powerup
		if (collision.gameObject.name == "Cube") {
			StartCoroutine(Block ());
		}
	}

	void OnTriggerEnter() {
			//If player collides with powerup
			StartCoroutine(Speedbump());
	}

	void OnCollisionExit (Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			isgrounded = false;
		}
	}

	IEnumerator Jump() {
		//Add jump delay and then jump up
		yield return new WaitForSeconds (0.05f);
		rigidbody.velocity = up;
	}

	// Update is called once per frame
	void FixedUpdate () {
		Vector3 downray = transform.TransformDirection (Vector3.down);

		//temporary forward and backwards movement
		if (Input.GetKey (KeyCode.A)) {
			rigidbody.MovePosition(rigidbody.position + (-side) * Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.D)) {
			rigidbody.MovePosition(rigidbody.position + side * Time.deltaTime);
		}
		//cast ray to check if REALLY grounded
		if (Physics.Raycast(transform.position,downray,out hit,1)) {
			collide = hit.collider.gameObject.name;
			Debug.DrawRay(transform.position,downray,Color.green);
			//make exceptions if grounded against powerups or other players
			if (collide == "Player2" || collide == "Sphere") {
				isgrounded = false;
			}
			else {isgrounded = true;}
		}
		else { isgrounded = false;}
		//jump function
		if ((Input.GetKey (KeyCode.Space))&&(isgrounded == true)) {
			animator.SetBool("Jump", isgrounded);
			StartCoroutine(Jump ());
		}
		if (isgrounded == false) {
			rigidbody.AddForce(extragrav);
		}
		//make sure model is facing correct direction
		rigidbody.transform.rotation = Quaternion.identity;
		rigidbody.transform.Rotate (0, 270, 0);
	}
}
