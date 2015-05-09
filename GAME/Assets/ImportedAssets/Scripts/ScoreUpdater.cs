using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreUpdater : MonoBehaviour {

	private PersistantGameManager gameManager;
	private string characterString;
	public string playername = "Player1(Clone)";
	public int score;
	private Text ScoreText;
	private Text highScoreText;
	public int Highscore;

	// Use this for initialization
	void Start () {
		gameManager = GameObject.Find ("GameController").GetComponent<PersistantGameManager>();
		highScoreText = GameObject.Find ("HighScoreText").GetComponent<Text> ();
		//if(PhotonView.Get(player).isMine) {
			playername = gameManager.thisPlayer;
		ScoreText = GetComponent<Text> ();
		Highscore = PlayerPrefs.GetInt ("High Score");
		highScoreText.text = "HighScore:\n" + Highscore.ToString();
		score = 0;
		
		Sprite newSprite = Resources.Load <Sprite>("UIDisplay_HighScore_" + gameManager.characterType);
		if (newSprite){
			GameObject.Find ("HighScore").GetComponent<Image> ().sprite = newSprite;
		} else {
			Debug.LogError("Sprite not found", this);
		}
	}
	
	// Update is called once per frame
	void Update () {
		GameObject playerdead = GameObject.Find (playername);
		DeathScenario death = playerdead.GetComponent<DeathScenario> ();
		//if player is alive
		if (death.dead == false) {
			//updating score
			score += 1;

			//update highscore if score is higher
			if (score > Highscore) {
				Highscore = score;
				highScoreText.text = "HighScore:\n" + Highscore.ToString();
			}
		}
		else {
			//update leaderboard
			PlayerPrefs.SetInt("High Score", Highscore);
		}
		ScoreText.text = "Score: " + score;
	}
}