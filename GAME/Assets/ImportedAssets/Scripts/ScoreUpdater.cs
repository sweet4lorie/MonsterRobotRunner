using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreUpdater : MonoBehaviour {
	
	public string playername = "Player1(Clone)";
	public int score;
	private Text ScoreText;
	public int Highscore;
	// Use this for initialization
	void Start () {
		ScoreText = GetComponent<Text> ();
		Highscore = PlayerPrefs.GetInt ("High Score");
		score = 0;
	}
	
	void OnGUI()
	{
		//show score
		GUI.Button (new Rect (10, 10, 110, 80), "High Score: " + Highscore + "\n" + "Score: " + score);
	}
	
	// Update is called once per frame
	void Update () {
		GameObject playerdead = GameObject.Find (playername);
		DeathScenario death = playerdead.GetComponent<DeathScenario> ();
		//if player is alive
		if (death.dead == false) {
			//update highscore if score is higher
			if (score > Highscore) {
				Highscore = score;
			}
			//updating score
			score += 1;
		}
		else {
			//update leaderboard
			PlayerPrefs.SetInt("High Score", Highscore);
		}
		ScoreText.text = "Score: " + score;
	}
}