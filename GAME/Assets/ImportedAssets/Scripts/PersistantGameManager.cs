using UnityEngine;
using System.Collections;

public class PersistantGameManager : MonoBehaviour {
	
	public string characterSelectedString;

	// Use this for initialization
	void Start () {
	}

	public void characterButton (string character) {
		Debug.Log (character);
		characterSelectedString = character;
	}

	// Make this game object and all its transform children
	// survive when loading a new scene.
	void Awake() {
		DontDestroyOnLoad(gameObject);
	}

	// Update is called once per frame
	void Update () {
	}
}
