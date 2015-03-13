using UnityEngine;
using System.Collections;

public class CharacterControllerMovement : MonoBehaviour {

	/// This script moves the character controller forward 
	/// and sideways based on the arrow keys.
	/// It also jumps when pressing space.
	/// Make sure to attach a character controller to the same game object.
	/// It is recommended that you make only one call to Move or SimpleMove per frame.	
	float speed = 30.0f;
	float jumpSpeed = 13.0f;
	float gravity = 20.0f;
	private Vector3 moveDirection = Vector3.zero;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		CharacterController controller = GetComponent<CharacterController>();
		if (controller.isGrounded) {
			moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
			moveDirection = transform.TransformDirection(moveDirection);
			moveDirection *= speed;
			if (Input.GetButton("Jump"))
				moveDirection.y = jumpSpeed;
			
		}
		moveDirection.y -= gravity * Time.deltaTime;
		controller.Move(moveDirection * Time.deltaTime);
	}
}
