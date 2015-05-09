using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class DataSceneSingleViewManager : MonoBehaviour {

	private bool closeView = true;
	private float openCloseSpeed = 0.1f;
	private float newScale;
	private string characterSelected;
	private bool rotateCharacter = false;
	private GameObject characterToRotate;
	private float newRotate;

	private GameObject[] multiViewButtons;
	private GameObject[] singleViewButtons;
	private GameObject[] singleViewModels;

	// Use this for initialization
	void Start () {
		gameObject.SetActive(false);
		multiViewButtons = GameObject.FindGameObjectsWithTag ("MultViewButtons");
		singleViewButtons = GameObject.FindGameObjectsWithTag ("SingleViewButtons");
		singleViewModels = GameObject.FindGameObjectsWithTag ("SingleViewModels");

		toggleOffObjects (singleViewButtons);
		toggleOffObjects (singleViewModels);
		newScale = gameObject.transform.localScale.x;
		newRotate = 0;
	}

	public void closeSingleView () {
		closeView = true;
		foreach (GameObject one in singleViewModels)
		{
			if (one.name == characterSelected + "_Rig_FBX_BIG")
			{
				one.SetActive(false);
			}
		}
	}
	
	public void openSingleView (string character) {
		characterSelected = character;
		closeView = false;
		gameObject.SetActive(true);
		setSprite("UISingle_" + characterSelected + "_Fill");
	}

	public void setSprite (string spriteString)
	{
		Sprite newSprite = Resources.Load <Sprite>(spriteString);
		if (newSprite){
			gameObject.GetComponent<Image> ().sprite = newSprite;
		} else {
			Debug.LogError("Sprite not found", this);
		}
	}
	
	public void toggleOnObjects (GameObject[] objects) {
		// turn first object list on, second off
		foreach (GameObject one in objects) {
			one.SetActive(true);
		}
	}
	public void toggleOffObjects (GameObject[] objects) {
		// turn first object list on, second off
		foreach (GameObject one in objects) {
			one.SetActive(false);
		}
	}


	// Update is called once per frame
	void Update () {
		// close and open single view
		if (newScale > 0.0f && closeView) {
			newScale -= openCloseSpeed;
		} else if (newScale < 1.0f && !closeView) {
			newScale += openCloseSpeed;
		}
		gameObject.transform.localScale = new Vector3 (newScale, newScale, newScale);

		// single fully CLOSED
		if (newScale <= 0.0f && closeView) {
			gameObject.SetActive(false);
			toggleOnObjects(multiViewButtons);
			toggleOffObjects(singleViewButtons);
		}

		// single fully OPEN
		if (newScale >= 1.0f && !closeView) {
			toggleOnObjects(singleViewButtons);
			toggleOffObjects(multiViewButtons);
			setSprite("UISingle_" + characterSelected);
			foreach (GameObject one in singleViewModels)
			{
				if (one.name == characterSelected + "_Rig_FBX_BIG")
				{
					one.SetActive(true);
					characterToRotate = one;
					rotateCharacter = true;
				}
			}
		}

		// rotate character
		if (rotateCharacter) {
			newRotate += 1;
			characterToRotate.transform.eulerAngles = new Vector3(0F, newRotate, 0F);
		}
	}
}
