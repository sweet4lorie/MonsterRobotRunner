using UnityEngine;
using System.Collections;

public class P1move : MonoBehaviour {

	private Animator animator;

	private Vector3 forward = new Vector3(0, 0, 5);
	private Vector3 side = new Vector3(5, 0, 0);
	private Vector3 up = new Vector3(0, 7, 0);
	private Vector3 extragrav = new Vector3(0,-13,0);
	public bool isgrounded;

	// Use this for initialization	
	void Start () {
		animator = GetComponent<Animator>();
		animator.SetBool("Jump", false);
	}

	IEnumerator Speedbump() {
		side = new Vector3 (11, 0, 0);
		yield return new WaitForSeconds (4.0f);
		side = new Vector3 (5, 0, 0);
	}

	void OnCollisionEnter (Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			isgrounded = true;
			animator.SetBool("Jump", false);
		}
	}

	void OnTriggerEnter() {
			StartCoroutine(Speedbump());
	}

	void OnCollisionExit (Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			isgrounded = false;
		}
	}

	IEnumerator Jump() {
		yield return new WaitForSeconds (0.20f);
		rigidbody.velocity = up;
	}

	// Update is called once per frame
	void FixedUpdate () {
		if (Input.GetKey (KeyCode.A)) {
			rigidbody.MovePosition(rigidbody.position + (-side) * Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.D)) {
			rigidbody.MovePosition(rigidbody.position + side * Time.deltaTime);
		}
		if ((Input.GetKey (KeyCode.Space))&&(isgrounded == true)) {
			animator.SetBool("Jump", isgrounded);
			StartCoroutine(Jump ());
		}
		if (isgrounded == false) {
			rigidbody.AddForce(extragrav);
		}
		rigidbody.transform.rotation = Quaternion.identity;
		rigidbody.transform.Rotate (0, 270, 0);
	}
}
