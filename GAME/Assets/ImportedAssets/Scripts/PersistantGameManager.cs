using UnityEngine;
using System.Collections;

public class PersistantGameManager : MonoBehaviour {
	
	//private string gameScene = "MonsterRobotRunner";

	// Use this for initialization
	void Start () {
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
