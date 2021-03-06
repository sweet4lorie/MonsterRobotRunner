﻿using UnityEngine;
using System.Collections;

public class BackgroundScroll : MonoBehaviour {
	
	private PersistantGameManager gameManager;
	private string characterString;
	public float normalSpeed = 0.1f;
	public float fastSpeed = 0.5f;
	public float speed;
	private bool backgroundFollow = true;

	// Use this for initialization
	void Start () {
		speed = normalSpeed;
		gameManager = GameObject.Find ("GameController").GetComponent<PersistantGameManager>();
		characterString = gameManager.thisPlayer;
	}

	public void backgroundFollowStop () {
		backgroundFollow = false;
	}

	// Update is called once per frame
	void Update () {
		if (backgroundFollow) {
			//check player's height and match accordingly
			GameObject player = GameObject.Find (characterString);
			if (player.transform.position.y < 80.0f && player.transform.position.y > -6.0f) {
				transform.position = new Vector3 (0, (player.transform.position.y - 2.5f), 4.2f);
			} else {
				transform.position = new Vector3 (0, -2.5f, 4.2f);
			}
		}
		float offset = Time.time * speed;
		renderer.material.SetTextureOffset ("_MainTex", new Vector2 (offset, 0));
	}
}
