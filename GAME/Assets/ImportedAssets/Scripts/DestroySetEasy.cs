using UnityEngine;
using System.Collections;

public class DestroySetEasy : MonoBehaviour {

	public float speed;
	// Use this for initialization
	void Start () {
		speed = -0.1f;
	}
	
	// Update is called once per frame
	void Update () {
		//move foreground in one direction until it reaches certain position
		if (transform.position.y <= 50.0f) {
			transform.position += new Vector3 (speed, 0, 0);
			if (transform.position.x <= -195.0f)
			{
				GameObject.Destroy(this.gameObject);
			}
		}
	}
}
