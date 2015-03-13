using UnityEngine;
using System.Collections;

public class P2move : MonoBehaviour {

	private Animator animator;

	private Vector3 forward = new Vector3(0, 0, 5);
	private Vector3 side = new Vector3(5, 0, 0);
	private Vector3 up = new Vector3(0, 6, 0);
	private Vector3 extragrav = new Vector3(0,-10,0);
	public bool isgrounded;

	// Use this for initialization
	void Start () {
		animator = GetComponent<Animator>();
		animator.SetBool("Jump", false);
	}
	
	void OnCollisionEnter (Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			isgrounded = true;	
			animator.SetBool("Jump", false);
		}
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
		if (Input.GetKey (KeyCode.LeftArrow)) {
			rigidbody.MovePosition(rigidbody.position + (-side) * Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.RightArrow)) {
			rigidbody.MovePosition(rigidbody.position + side * Time.deltaTime);
		}
		if ((Input.GetKey (KeyCode.UpArrow)) && (isgrounded == true)) {
			animator.SetTrigger("Jump");
			StartCoroutine(Jump ());
		}
		if (isgrounded == false) {
			rigidbody.AddForce(extragrav);
		}
		rigidbody.transform.rotation = Quaternion.identity;
	}

}
