using Godot;
using System;
using System.Collections.Generic;
using NetMQ;
using NetMQ.Sockets;

public partial class Bonsai : Node
{
	PublisherSocket pubSocket;
	PublisherSocket pubSocketBump_D;
	PublisherSocket pubSocketBump_V;
	PublisherSocket pubSocketBump_C;

	[Export]
	public CharacterBody3D player { get; set; }
	[Export]
	public Node3D area3D_Diagonal { get; set; }
	[Export]
	public Node3D area3D_Vertical { get; set; }
	[Export]
	public Node3D area3D_Circles { get; set; }
	
	float bump_D;
	float bump_V;
	float bump_C;
	
	public override void _Ready()
	{
		pubSocket = new PublisherSocket();
		pubSocket.Options.SendHighWatermark = 1000;
		pubSocket.Bind("tcp://*:5556");
		
		pubSocketBump_D = new PublisherSocket();
		pubSocketBump_D.Options.SendHighWatermark = 1000;
		pubSocketBump_D.Bind("tcp://*:5557");
		
		pubSocketBump_V = new PublisherSocket();
		pubSocketBump_V.Options.SendHighWatermark = 1000;
		pubSocketBump_V.Bind("tcp://*:5558");
		
		pubSocketBump_C = new PublisherSocket();
		pubSocketBump_C.Options.SendHighWatermark = 1000;
		pubSocketBump_C.Bind("tcp://*:5559");
	}
	
	public static String GetTimestamp(DateTime value)
	{
	return value.ToString("yyyyMMddHHmmssffff");
	}
	
	public override void _Process(double delta)
	{
		pubSocket.SendMoreFrame("Position").SendFrame(CreateMessage());
		pubSocketBump_D.SendMoreFrame("Bump_D").SendFrame(CreateMessageBump_D());
		pubSocketBump_V.SendMoreFrame("Bump_V").SendFrame(CreateMessageBump_V());
		pubSocketBump_C.SendMoreFrame("Bump_C").SendFrame(CreateMessageBump_C());
		//GD.Print(bump);
	}
	private string CreateMessage() {
		Vector3 position = player.GlobalPosition;
		Vector3 velocity = player.Velocity;
		String timeStamp = GetTimestamp(DateTime.Now);
		
		var parts = new List<float>{
			position.X,
			position.Z,
			velocity.X,
			velocity.Z,
			player.Rotation.Y,
			//bump,
		};
		return String.Join(',', parts) + ',' + timeStamp;
	}
	private string CreateMessageBump_D() {
		//Vector3 position = player.GlobalPosition;
		//Vector3 velocity = player.Velocity;
		// Accessing the getter function of Area3D_Diagonal
		bump_D = (float)area3D_Diagonal.Call("getDiagonalBump");
		//bump_V = (float)area3D_Vertical.Call("getVerticalBump");
		//float bump = area3D_Diagonal.Area3D_Diagonal_bump;
		var parts = new List<float>{
			bump_D,
			//bump_V
		};
		return String.Join(',', parts);
	}
	
	private string CreateMessageBump_V() {
		bump_V = (float)area3D_Vertical.Call("getVerticalBump");
		//float bump = area3D_Diagonal.Area3D_Diagonal_bump;
		var parts = new List<float>{
			bump_V
		};
		return String.Join(',', parts);
	}
	
	private string CreateMessageBump_C() {
		bump_C = (float)area3D_Circles.Call("getCircleBump");
		//float bump = area3D_Diagonal.Area3D_Diagonal_bump;
		var parts = new List<float>{
			bump_C
		};
		return String.Join(',', parts);
	}
}
