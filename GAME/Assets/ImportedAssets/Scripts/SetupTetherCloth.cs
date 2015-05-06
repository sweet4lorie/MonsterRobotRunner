using UnityEngine;
using System.Collections;

public class SetupTetherCloth : MonoBehaviour {
	
	private Transform pullChildJoint;
	private Transform otherCollider;
	private float convertValue;
	public int playerNum;
	
	// Use this for initialization
	void Start () {
		convertValue = (180.0F / Mathf.PI);
		
		foreach(GameObject child in GameObject.FindGameObjectsWithTag("PullJoint"))
		{
			if (child.transform.root.name == "Player"+playerNum+"(Clone)"){
				pullChildJoint = child.gameObject.transform;
				Debug.Log (pullChildJoint);
			} else {
				otherCollider = child.transform.root;
				Debug.Log (otherCollider);
			}
		}
		setupCloth ();
	}
	
	private void setupCloth ()
	{
		// can only edit when turned off
		Vector3 rootColliderOffset = new Vector3 (0F, 0.4F, 0F);
		gameObject.SetActive (false);
		Vector3 pt1 = pullChildJoint.position;
		Vector3 pt2 = otherCollider.position + rootColliderOffset;
		
		gameObject.transform.position = new Vector3((pt1.x + pt2.x)/2, (pt1.y + pt2.y)/2, (pt1.z + pt2.z)/2);
		
		float m1 = 1f;
		if ((pt1.x > pt2.x && pt1.z > pt2.z) || (pt1.x < pt2.x && pt1.z < pt2.z)) {
			m1 = -1F;
		}
		float m2 = 1f;
		if ((pt1.x < pt2.x && pt1.y > pt2.y) || (pt1.x > pt2.x && pt1.y < pt2.y)) {
			m2 = -1F;
		}
		float distance = Mathf.Sqrt (Mathf.Pow (pt2.x - pt1.x, 2) + Mathf.Pow (pt2.y - pt1.y, 2) + Mathf.Pow (pt2.z - pt1.z, 2));
		float scalex = distance / 9;
		float roty = Mathf.Atan ((pt1.z - pt2.z)/(pt1.x - pt2.x)) * convertValue * m1;
		float rotz = Mathf.Asin ((pt1.y - pt2.y)/distance) * convertValue * m2;
		Debug.Log (roty);
		Debug.Log (rotz);
		
		gameObject.transform.eulerAngles = new Vector3(0F, 0F, rotz);
		gameObject.transform.eulerAngles = new Vector3(0F, roty, rotz);
		
		gameObject.transform.localScale = new Vector3(scalex, 1F, 0.02F);
		
		// can only add collider when turned on
		gameObject.SetActive (true);
		gameObject.GetComponent<InteractiveCloth> ().AttachToCollider (pullChildJoint.collider, false, false);
		gameObject.GetComponent<InteractiveCloth> ().AttachToCollider (otherCollider.collider, false, false);
		
		//now have to turn back off as a default
		gameObject.GetComponent<ClothRenderer>().enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
