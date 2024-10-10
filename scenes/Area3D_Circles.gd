extends Area3D

# Define exported variable
var Area3D_Circle_bump: float = 0.0

# Handle the event when a body enters this area
func _on_body_entered(body):
	if body.name == "Player":
		Area3D_Circle_bump = 1.0  # Assigning a float value
		# Do some action
		#await get_tree().create_timer(0.55).timeout # waits for xx second(s) - 0.3 is th least it can take to activate the servo consistently
		# Do something afterwards
		#Area3D_Circle_bump = 0.0
		#queue_free() # Deletes this node (self) at the end of the frame
	else:
		Area3D_Circle_bump = 0.0  # Assigning a float value

	
func _on_body_exited(body):
	if body.name == "Player":
		Area3D_Circle_bump = 0.0
