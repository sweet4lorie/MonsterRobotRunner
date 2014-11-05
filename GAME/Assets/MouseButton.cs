using UnityEngine;
using System.Collections;

public class MouseButton : MonoBehaviour
{
	void OnMouseDown()
	{
		Debug.Log(this.name + " Mouse Down");
	}

	void OnMouseUp()
	{
		Debug.Log(this.name + " Mouse Up");
	}
}
