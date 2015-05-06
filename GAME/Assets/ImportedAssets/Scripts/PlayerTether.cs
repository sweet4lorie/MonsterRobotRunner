using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerTether : MonoBehaviour {
	
	// default labels
	private string player1Label = "Player1(Clone)";
	private string player2Label = "Player2(Clone)";
	private string backgroundLabel = "Background";
	private string groundTag = "Floor";
	//private string pullButtonLabel = "Pull Button";
	//private string jumpButtonLabel = "Jump Button";
	
	// for animation
	private Animator animatorControlCurrentPlayer;
	private Animator animatorControlOtherPlayer;
	
	// intialize
	private GameObject otherPlayerGameObject;
	private GameObject background;
	private BackgroundScroll bgScroll;
	private float initialXpos, initialYpos;
	public float endDistanceX, endDistanceY;
	public float speed, speed2;
	public bool checkPulledCurrentPlayer;
	public bool checkTetherOtherPlayer;
	public bool isFrontCurrentPlayer;
	public bool isFrontOtherPlayer;
	private string buttonClicked = "";
	private GameObject cloth;

	// values
	private float speedIncrease;
	private float tetherDistanceX = 3.5f;
	private float tetherDistanceY = 2.5f;
	private float directionMult = 0;
	
	// for specific player
	private Dictionary<string, Dictionary<string, KeyCode>> keyControls = new Dictionary<string, Dictionary<string, KeyCode>>();
	private string currentPlayer;
	private string otherPlayer;
	
	// Use this for initialization
	void Start () {
		// initilate values
		background = GameObject.Find(backgroundLabel);
		bgScroll = background.GetComponent<BackgroundScroll> ();
		speed = 0;
		speed2 = 0;
		checkPulledCurrentPlayer = false;
		checkTetherOtherPlayer = false;
		
		// Setup Key Controls
		Dictionary<string, KeyCode> player1 = new Dictionary<string, KeyCode>();
		Dictionary<string, KeyCode> player2 = new Dictionary<string, KeyCode>();
		
		player1.Add ("tether", KeyCode.R);
		keyControls.Add (player1Label, player1);
		
		player2.Add ("tether", KeyCode.E);
		keyControls.Add (player2Label, player2);
		
		// check which game object it is connnected to
		if (gameObject.name == player1Label) {
			currentPlayer = player1Label;
			otherPlayer = player2Label;
		} else if (gameObject.name == player2Label) {
			currentPlayer = player2Label;
			otherPlayer = player1Label;
		}
		
		// SET pulled animation
		animatorControlCurrentPlayer = GetComponentInChildren<Animator>();
		animatorControlCurrentPlayer.SetBool("Pulled", checkPulledCurrentPlayer);
		
		// SET tether animation for player 2
		otherPlayerGameObject = GameObject.Find (otherPlayer);
		animatorControlOtherPlayer = otherPlayerGameObject.GetComponentInChildren<Animator> ();
		animatorControlOtherPlayer.SetBool ("Tether", checkTetherOtherPlayer);

		//set clothes to players
		if (currentPlayer == player1Label) {
			cloth = GameObject.Find ("Player1_Cloth");
		}
		else {
			cloth = GameObject.Find ("Player2_Cloth");
		}
	}

	public void clickButton (string button)
	{
		buttonClicked = button;
	}

	IEnumerator normalYTether() {
		//tether upwards as well depending on difference in height
		if (transform.position.y < endDistanceY) {
			transform.position += new Vector3 (0, speed2, 0);
			speed2 += speedIncrease * (tetherDistanceY / tetherDistanceX);
		} else {
			speed2 = 0;
		}
		yield return 0;
	}
	

	IEnumerator player1XTether() {
		//speed up background speed while tether animation is running;
		speedIncrease = 0.02f;

		// p1 going forwards
		if (isFrontCurrentPlayer == true && transform.position.x - otherPlayerGameObject.transform.position.x < tetherDistanceX)
		{
			if(transform.position.x > 0) {
				transform.position += new Vector3 (-0.05f, 0, 0);
				otherPlayerGameObject.transform.position -= new Vector3 (speed, 0, 0);
				speed += speedIncrease;
				
				//Boost foreground speed for all generated obstacles
				foreach(GameObject check in GameObject.FindGameObjectsWithTag ("Floor")) {
					DestroySet destroySet = check.GetComponent<DestroySet> ();
					if (destroySet != null) {
						destroySet.speed = destroySet.fastSpeed;
					}
				}
				bgScroll.speed = bgScroll.normalSpeed;
			}
			else
			{
				transform.position += new Vector3 (speed, 0, 0);
				speed += speedIncrease;
			}
		} else if(isFrontCurrentPlayer == false && transform.position.x > endDistanceX) {
			transform.position -= new Vector3 (speed, 0, 0);
			speed += speedIncrease;
		}
		//reset variables once tether distance is travelled
		else {
			speed = 0;
			checkPulledCurrentPlayer = false;
			bgScroll.speed = bgScroll.normalSpeed;
			//undo boost to foreground speed for all generated obstacles
			foreach(GameObject check in GameObject.FindGameObjectsWithTag (groundTag)) {
				DestroySet destroySet = check.GetComponent<DestroySet> ();
				if (destroySet != null) {
					destroySet.speed = destroySet.normalSpeed;
				}
			}
		}
		yield return 0;
	}
	
	IEnumerator normalXTether() {
		speedIncrease = 0.02f;
		//distX > 0
		if (isFrontCurrentPlayer == true && transform.position.x < endDistanceX) {
			transform.position += new Vector3 (speed, 0, 0);
			speed += speedIncrease;
		}
		else if(isFrontCurrentPlayer == false && transform.position.x > endDistanceX) {
			transform.position -= new Vector3 (speed, 0, 0);
			speed += speedIncrease;
		}
		//reset variables once tether distance is travelled
		else {
			speed = 0;
			checkPulledCurrentPlayer = false;
		}

		yield return 0;
	}


	// Update is called once per frame
	void FixedUpdate () {

		// find direction of characters

		if (Input.GetKey (keyControls [currentPlayer] ["tether"])|| Input.GetKey (keyControls [otherPlayer] ["tether"])
		    || buttonClicked == "Pull") {
			//clean values
			speed = 0;
			speed2 = 0;

			//check if other player is in front
			if (otherPlayerGameObject.transform.position.x >= transform.position.x) {
				isFrontCurrentPlayer = true;
				isFrontOtherPlayer = false;
				directionMult = 1;
			} else {
				isFrontCurrentPlayer = false;
				isFrontOtherPlayer = true;
				directionMult = -1;
			}
		}

		if (Input.GetKey (keyControls[currentPlayer]["tether"]) || buttonClicked == "Pull") {
			//set distance to travel to 
			endDistanceX = otherPlayerGameObject.transform.position.x + (tetherDistanceX * directionMult);
			endDistanceY = otherPlayerGameObject.transform.position.y + tetherDistanceY;

			//begin tether!
			checkPulledCurrentPlayer = true;
			checkTetherOtherPlayer = true;
		} else {
			checkTetherOtherPlayer = false;
		}

		// tether animation
		animatorControlCurrentPlayer.SetBool("Pulled", checkPulledCurrentPlayer);
		animatorControlCurrentPlayer.SetBool("IsFront", isFrontCurrentPlayer);
		animatorControlOtherPlayer.SetBool("Tether", checkTetherOtherPlayer);
		animatorControlOtherPlayer.SetBool("IsFront", isFrontOtherPlayer);
		
		if (checkPulledCurrentPlayer == true) {
			cloth.SetActive(true);
			if (currentPlayer == player1Label) {
				StartCoroutine(normalYTether());
				StartCoroutine(player1XTether());
			} else {
				StartCoroutine(normalXTether());
			}

		}
		else {
			Debug.Log(cloth);
			cloth.SetActive(false);
		}
	}

}