using UnityEngine;
using System.Collections;

public class Speedboost : MonoBehaviour {

	private float speed;
	// Use this for initialization
	void Start () {
		speed = -0.1f;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += new Vector3 (speed, 0, 0);
		if (transform.position.x <= -15.0f)
		{
			transform.position += new Vector3(60.0f,0,0);
		}
	}
}
