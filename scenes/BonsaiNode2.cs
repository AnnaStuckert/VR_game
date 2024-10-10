using Godot;
using System;
using System.Collections.Generic;
using NetMQ;
using NetMQ.Sockets;

public partial class BonsaiNode2 : Node3D
{
	PublisherSocket pubSocket;

	[Export]
	public Area3D area3D_Diagonal { get; set; }


	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
