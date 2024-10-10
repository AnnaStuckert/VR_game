//using Godot;
//using System;
//using System.Collections.Generic;
//using NetMQ;
//using NetMQ.Sockets;
//
//public partial class Bonsai_bump : Node
//{
	//PublisherSocket pubSocket;
//
	//[Export]
	//public CharacterBody3D player { get; set; }
	//[Export]
	//public Area3D area3D_Diagonal { get; set; }
	//[Export]
	//public Area3D area3D_Vertical { get; set; }
	//[Export]
	//public Area3D area3D_ { get; set; }
	//
	//float bump;
//
	//public override void _Ready()
	//{
		//pubSocket = new PublisherSocket();
		//pubSocket.Options.SendHighWatermark = 1000;
		//pubSocket.Bind("tcp://*:5558");
	//}
//
	//public override void _Process(double delta)
	//{
		//pubSocket.SendMoreFrame("Bump").SendFrame(CreateMessage());
		////GD.Print(bump);
	//}
	//
	//private string CreateMessage() {
		//Vector3 position = player.GlobalPosition;
		//Vector3 velocity = player.Velocity;
		//// Accessing the getter function of Area3D_Diagonal
		//bump = (float)area3D_Diagonal.Call("getDiagonalBump");
		////float bump = area3D_Diagonal.Area3D_Diagonal_bump;
		//var parts = new List<float>{
			////position.X,
			////position.Z,
			////velocity.X,
			////velocity.Z,
			////player.Rotation.Y,
			//bump,
		//};
		//return String.Join(',', parts);
	//}
//}
