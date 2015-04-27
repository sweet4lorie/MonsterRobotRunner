using UnityEngine;
using System.Collections;

public class SetMove : MonoBehaviour {

	private float speed;

	private float normalSpeed = -0.05f;
	private float maxX = -15.0f;

	// Use this for initialization
	void Start () {
		speed = normalSpeed;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += new Vector3 (speed, 0, 0);
		//speed -= 0.1f;
		if (transform.position.x <= -maxX)
			{
			transform.position += new Vector3(35.0f, 0, 0);
			}

	}
}
