using UnityEngine;
using System.Collections;

public class idlecheck : MonoBehaviour {

	private RaycastHit hit;
	public string collide;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 fwd = transform.TransformDirection (Vector3.back);
		Debug.DrawRay(transform.position,fwd,Color.red);
		if(Physics.Raycast(transform.position,fwd,out hit,1.0f)) {
			collide = hit.collider.gameObject.name;
			if (collide == "Player2" || collide == "Sphere") {
				//Idle animation
			}
		}
	}
}
