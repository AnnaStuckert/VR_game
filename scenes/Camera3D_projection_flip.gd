extends Camera3D

func _ready():
	var flip_matrix = Transform3D()
	flip_matrix.basis.x.x = -1  # This flips the view horizontally.
	self.transform = self.transform * flip_matrix
