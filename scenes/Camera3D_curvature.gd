extends Camera3D  # Make sure to extend Camera3D

# Parameters for the cylindrical projection
var cylinder_radius: float = 10.0
var cylinder_height: float = 5.0

func _ready():
	# Set the field of view if necessary
	fov = 70.0  # Set FOV directly using the built-in property

	# Adjust the projection for cylindrical
	_set_cylindrical_projection()

func _set_cylindrical_projection():
	# Set aspect ratio and custom projection
	var aspect_ratio = get_viewport().size.x / get_viewport().size.y
	
	# Calculate the projection parameters
	# Here you could do additional calculations to set other properties if needed
	projection = Camera3D.PROJECTION_PERSPECTIVE
	# If you need custom behavior, consider creating a custom shader or modifying the mesh
