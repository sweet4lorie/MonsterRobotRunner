using UnityEngine;
using System.Collections;

public class StartNetwork : MonoBehaviour {
	
	private const string typename = "OhSnap!";
	private const string gamename = "test";
	private string p1name = "Player1(Clone)";
	private HostData[] hostlist;
	public bool serverstart;
	public bool serverjoin;
	public GameObject p1prefab;
	public GameObject p2prefab;
	private GameObject player1;
	private PlayerTether tetherer;
	private DeathScenario deathscene;
	
	void Start() {
		serverjoin = false;
		serverstart = false;
	}
	// Use this for initialization
	void StartServer() {
		Network.InitializeServer (2, 26000, !Network.HavePublicAddress());
		MasterServer.RegisterHost (typename, gamename);
	}
	
	void OnServerInitialized() {
		Debug.Log ("Server started!");
		serverstart = true;
		SpawnP1 ();
	}
	
	private void RefreshHostList() {
		MasterServer.RequestHostList (typename);
	}
	
	void OnMasterServerEvent(MasterServerEvent msEvent) {
		if (msEvent == MasterServerEvent.HostListReceived) {
			hostlist = MasterServer.PollHostList();
		}
	}
	
	private void JoinServer(HostData hostData) {
		Network.Connect (hostData);
	}
	
	void OnConnectedToServer() {
		Debug.Log ("Server joined");
		serverjoin = true;
		serverstart = true;
		SpawnP2 ();
	}
	
	private void SpawnP1() {
		Network.Instantiate(p1prefab,new Vector3(-1f,0.5f,0),Quaternion.identity,0);
	}
	
	private void SpawnP2() {
		Network.Instantiate(p2prefab,new Vector3(0f,0.5f,0),Quaternion.identity,0);
	}
	
	void OnPlayerConnected(NetworkPlayer player) {
		serverjoin = true;
	}
	
	void OnGUI()
	{
		if (!Network.isClient && !Network.isServer)
		{
			if (GUI.Button(new Rect(100, 250, 250, 100), "Start Server"))
				StartServer();
			
			if (GUI.Button(new Rect(500, 250, 250, 100), "Refresh Hosts"))
				RefreshHostList();
			
			if (hostlist != null)
			{
				for (int i = 0; i < hostlist.Length; i++)
				{
					if (GUI.Button(new Rect(300 + (110 * i), 450, 300, 100), hostlist[i].gameName))
						JoinServer(hostlist[i]);
				}
			}
		}
		if (Network.isServer) {
			GUI.Button(new Rect(400, 400, 250, 100), "Waiting on P2...");
		}
	}
	
	IEnumerator Timewaster() {
		
		yield return new WaitForSeconds (0.5f);
		player1 = GameObject.Find (p1name);
		tetherer = player1.AddComponent<PlayerTether> ();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if (serverstart && serverjoin) {
			StartCoroutine(Timewaster());
			Application.LoadLevel("MonsterRobotRunner");
		}
	}
}
