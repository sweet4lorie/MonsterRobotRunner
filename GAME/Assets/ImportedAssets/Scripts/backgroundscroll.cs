using UnityEngine;
using System.Collections;

public class backgroundscroll : MonoBehaviour {
	public float speed = 0.5f;
	// Use this for initialization
	void Start () {
	}

	void fastspeed() {
		speed = 1.0f;
	}

	void normspeed() {
		speed = 0.5f;
	}

	// Update is called once per frame
	void Update () {
		float offset = Time.time * speed;
		renderer.material.SetTextureOffset ("_MainTex", new Vector2 (offset, 0));
	}
}
