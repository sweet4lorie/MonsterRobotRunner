using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour 
{
	private bool _isFacingRight;
	private CharacterController2D _controller;
	private float _normalizedHorizontalSpeed;
	private GUIText _jumpButton;
	
	public float MaxSpeed = 8f;
	public float SpeedAccelerationOnGround = 10f;
	public float SpeedAccelerationInAir = 5f;
	
	public void Start()
	{
		
		_controller = GetComponent<CharacterController2D>();
		_jumpButton = GameObject.Find ("btnJump").guiText;
		
		_isFacingRight = transform.localScale.x > 0;
	}
	
	
	
	public void Update()
	{
		HandleInput();
		
		var movementFactor = _controller.State.IsGrounded ? SpeedAccelerationOnGround : SpeedAccelerationInAir;
		_controller.SetHorizontalForce(Mathf.Lerp(_controller.Velocity.x, _normalizedHorizontalSpeed * MaxSpeed, Time.deltaTime * movementFactor));
	}
	
	public void OnGUI()
	{
		if(Input.touches.Length > 0)
		{
			if (Input.GetTouch(0).phase == TouchPhase.Began && _jumpButton.HitTest(Input.GetTouch(0).position))
			{
				if (_controller.CanJump)
					_controller.Jump();
			}
		}
	}
	
	private void HandleInput()
	{
		if(_controller.CanJump && Input.GetKeyDown(KeyCode.Space))
		{
			_controller.Jump();
		}
	}
	
	private void Flip()
	{
		transform.localScale = new Vector3(-transform.localScale.x, transform.localScale.y, transform.localScale.z);
		_isFacingRight = transform.localScale.x > 0;
	}
}

