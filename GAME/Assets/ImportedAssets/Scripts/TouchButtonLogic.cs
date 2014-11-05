using UnityEngine;
using System.Collections;

public class TouchButtonLogic : MonoBehaviour
{

	// Update is called once per frame
	void Update ()
	{
		// check for touches on screen
		if(Input.touches.Length <= 0)
		{
			//if no touches then do this
		}
		else //if there is a touch/es
		{
			//loop through all the touches
			for (int i = 0; i < Input.touchCount; i++)
			{
				// execute code for current touch on screen (i)
				if (this.guiTexture.HitTest(Input.GetTouch(i).position))
				{
					// if current touch is within our guiTexture
					if(Input.GetTouch(i).phase == TouchPhase.Began)
					{
						Debug.Log ("The touch is down on " + this.name);
					}
					if(Input.GetTouch(i).phase == TouchPhase.Ended)
					{
						Debug.Log ("The touch has ended on " + this.name);
					}
				}
			}
		}

	}
}
