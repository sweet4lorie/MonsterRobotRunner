using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerMove : MonoBehaviour {
	
	// default labels
	private string player1Label = "Player1(Clone)";
	private string player2Label = "Player2(Clone)";
	private string backdropLabel = "Background";
	private string groundTag = "Floor";
	private string powerupSpeedLabel = "Sphere";
	private string powerupWallLabel = "Cube";
	
	// for animation
	private Animator animatorControl;	// get animator from specified game object
	
	// initialize values
	public bool isgrounded;
	private RaycastHit hit;
	public string collide;
	
	// set values
	//private Vector3 forward = new Vector3(0, 0, 5);
	private Vector3 side = new Vector3(6, 0, 0);	// movement speed
	private Vector3 up = new Vector3(0, 10, 0);	// jump height
	private Vector3 extragrav = new Vector3(0, -13, 0);
	
	private float speedBumpDuration = 0.5f;
	private float blockDuration = 4.0f;
	private float jumpDelay = 0.1f;
	//private Vector3 jumpForce = new Vector3(0, 100, 0);
	
	// for specific player
	private Dictionary<string, Dictionary<string, KeyCode>> keyControls = new Dictionary<string, Dictionary<string, KeyCode>>();
	private string currentPlayer;
	private string otherPlayer;
	
	// Use this for initialization	
	void Start () {
		// SET jump animtion
		animatorControl = GetComponentInChildren<Animator>();
		animatorControl.SetBool("Jump", false);
		
		// Setup Key Controls
		Dictionary<string, KeyCode> player1 = new Dictionary<string, KeyCode>();
		Dictionary<string, KeyCode> player2 = new Dictionary<string, KeyCode>();
		
		player1.Add ("jump", KeyCode.Space);
		player1.Add ("back", KeyCode.A);
		player1.Add ("front", KeyCode.D);
		player1.Add ("temp", KeyCode.T);
		keyControls.Add (player1Label, player1);
		
		player2.Add ("jump", KeyCode.UpArrow);
		player2.Add ("back", KeyCode.LeftArrow);
		player2.Add ("front", KeyCode.RightArrow);
		player2.Add ("temp", KeyCode.Y);
		keyControls.Add (player2Label, player2);
		
		// check which game object it is connnected to
		if (gameObject.name == player1Label) {
			currentPlayer = player1Label;
			otherPlayer = player2Label;
		} else if (gameObject.name == player2Label) {
			currentPlayer = player2Label;
			otherPlayer = player1Label;
		}
	}
	
	//Synchronize random number generator throughout network
	void OnSerializeNetworkView(BitStream stream, NetworkMessageInfo info) {
		Vector3 syncposition = Vector3.zero;
		if (stream.isWriting) {
			syncposition = transform.position;
			stream.Serialize(ref syncposition);
		}
		else {
			stream.Serialize(ref syncposition);
			transform.position = syncposition;
		}
	}
	//Speed boost
	IEnumerator Speedbump() {
		
		// initiate values
		GameObject background;
		GameObject generator;
		
		background = GameObject.Find (backdropLabel);
		generator = GameObject.Find ("Main Camera");
		
		BackgroundScroll bgScroll = background.GetComponent<BackgroundScroll> ();
		GenerateLevelSets genLevel = generator.GetComponent<GenerateLevelSets> ();
		
		// Boost foreground speed for all generated obstacles
		foreach(GameObject check in GameObject.FindGameObjectsWithTag (groundTag)) {
			DestroySet destroySet = check.GetComponent<DestroySet>();
			if (destroySet != null) {
				destroySet.speed = destroySet.fastSpeed;
			}
		}
		
		// Boost gen object speed while using powerup
		genLevel.speed = genLevel.fastSpeed;
		
		// Boost background speed
		bgScroll.speed = bgScroll.fastSpeed;
		
		// Duration of boost
		yield return new WaitForSeconds (speedBumpDuration);
		
		// Boost foreground speed for all generated obstacles
		foreach(GameObject check in GameObject.FindGameObjectsWithTag (groundTag)) {
			DestroySet destroySet = check.GetComponent<DestroySet>();
			if (destroySet != null) {
				destroySet.speed = destroySet.normalSpeed;
			}
		}
		// Undo boost to gen object speed
		genLevel.speed = genLevel.normalSpeed;
		
		// Undo boosted speed for background
		bgScroll.speed = bgScroll.normalSpeed;
	}
	
	//block powerup function
	IEnumerator Block() {
		GameObject player1, player2, cube;
		cube = GameObject.Find(powerupWallLabel);
		player1 = GameObject.Find (player1Label);
		player2 = GameObject.Find (player2Label);
		
		//if either player is being tethered then let pass
		if ((player1.GetComponent<PlayerTether>().checkPulledCurrentPlayer == true) || 
		    (player2.GetComponent<PlayerTether>().checkTetherOtherPlayer == true)) {
			cube.layer = 9;
		}
		
		// wait duration
		yield return new WaitForSeconds (blockDuration);
		cube.layer = 8;
	}
	
	void OnCollisionEnter (Collision collision) {
		// END jump animation
		if (collision.gameObject.tag == groundTag) {
			animatorControl.SetBool("Jump", false);
		}
		// check for collision with block powerup
		if (collision.gameObject.name == powerupWallLabel) {
			StartCoroutine(Block ());
		}
	}
	
	void OnTriggerEnter() {
		//If player collides with powerup
		StartCoroutine(Speedbump());
	}
	
	void OnCollisionExit (Collision collision) {
		if (collision.gameObject.tag == groundTag) {
			isgrounded = false;
		}
	}
	
	IEnumerator Jump() {
		//Add jump delay and then jump up
		yield return new WaitForSeconds (jumpDelay);
		rigidbody.velocity = up;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//if (networkView.isMine) {
		Vector3 downray = transform.TransformDirection (Vector3.down);
		//animatorControl.SetBool("Tether", false);
		
		//temporary forward and backwards movement
		if(PhotonView.Get (this).isMine) {
			if (Input.GetKey (keyControls[currentPlayer]["back"])) {
				rigidbody.MovePosition(rigidbody.position + (-side) * Time.deltaTime);
			}
			if (Input.GetKey (keyControls[currentPlayer]["front"])) {
				rigidbody.MovePosition(rigidbody.position + side * Time.deltaTime);
			}
		}
		//cast ray to check if REALLY grounded
		if (Physics.Raycast(transform.position, downray, out hit, 1)) {
			collide = hit.collider.gameObject.name;
			Debug.DrawRay(transform.position, downray, Color.green);
			//make exceptions if grounded against powerups or other players
			if (collide == otherPlayer || collide == powerupSpeedLabel) {
				isgrounded = false; 
			}
			else {isgrounded = true;}
		}
		else { isgrounded = false;}
		
		// jump function
		if(PhotonView.Get (this).isMine) {
			if ((Input.GetKey (keyControls[currentPlayer]["jump"]))&&(isgrounded == true)) {
				// START jump animation
				animatorControl.SetBool("Jump", isgrounded);
				StartCoroutine(Jump ());
			}
		}
		if (isgrounded == false) {
			rigidbody.AddForce(extragrav);
		}
		
		//make sure model is facing correct direction
		rigidbody.transform.rotation = Quaternion.identity;
		rigidbody.transform.Rotate (0, 0, 0);
		this.transform.GetChild(0).GetComponent<Transform>().localPosition = new Vector3(0,0,0);
	}
	//}
}

