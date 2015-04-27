using UnityEngine;
using System.Collections;

public class DestroySet : MonoBehaviour {

	//maxY is used to keep prefab model onscreen to instantiate from
	public float maxY = 50.0f;
	public float maxX = -195.0f;
	public float normalSpeed = -0.1f;
	public float fastSpeed = -0.3f;
	public float speed;
	// Use this for initialization
	void Start () {
		speed = normalSpeed;
	}
	
	// Update is called once per frame
	void Update () {
		//move foreground in one direction until it reaches certain position
		//then destroy
		if (transform.position.y <= maxY) {
			transform.position += new Vector3 (speed, 0, 0);
			if (transform.position.x <= maxX)
			{
				GameObject.Destroy(this.gameObject);
			}
		}
	}
}
