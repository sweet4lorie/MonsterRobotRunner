using UnityEngine;
using System.Collections;

public class StartMovie : MonoBehaviour {

	private string imgfolder = "Video Images";
	private Object[] textures;
	private bool playmov;
	private GameObject cam;
	private GameObject player;
	private AudioListener playerlistener;
	public int index;

	// Use this for initialization
	void Start () {
		index = 0;
		player = GameObject.Find ("Audio Listener");
		cam = GameObject.Find("Main Camera");
		playmov = false;
		playerlistener = player.GetComponent<AudioListener>();

		//disable this audio listener at start
		this.GetComponent<AudioListener> ().enabled = false;

		//load all images into object array
		textures = Resources.LoadAll (imgfolder);
	}

	// Update is called once per frame
	void Update () { 
		//start movie
		if (Input.GetKey(KeyCode.M)) {
			playmov = true;
			//play audio
			audio.Play ();
			//disable normal audio listener and enable movie audio listener
			playerlistener.enabled = false;
			this.GetComponent<AudioListener> ().enabled = true;
			cam.GetComponent<CameraFollow>().enabled = false;

			//show movie screen
			cam.transform.position = new Vector3(-35.0f,0,-14.5f);
		}
		//interate through entire image album at a constant speed
		if (playmov == true) {
			index = (int) (Time.time * 25) % textures.Length;
			renderer.material.mainTexture = textures[index] as Texture;
		}
		//Once done iterating through album reset audio listeners and reset camera
		if (index == (textures.Length-1)) {
			playmov = false;
			audio.Stop();
			this.GetComponent<AudioListener> ().enabled = false;
			playerlistener.enabled = true;
			cam.GetComponent<CameraFollow>().enabled = true;

		}
	}
}
