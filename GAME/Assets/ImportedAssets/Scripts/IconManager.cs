using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class IconManager : MonoBehaviour {
	
	private PersistantGameManager gameManager;
	private string character;

	void Awake() {
		DontDestroyOnLoad(gameObject);
	}
		
	// Use this for initialization
	void Start () {
		gameManager = GameObject.Find ("GameController").GetComponent<PersistantGameManager>();
		character = gameManager.characterSelectedString;
		
		Sprite newSprite = Resources.Load <Sprite>("Icon_" + character);
		if (newSprite){
			gameObject.GetComponent<Image> ().sprite = newSprite;
		} else {
			Debug.LogError("Sprite not found", this);
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
