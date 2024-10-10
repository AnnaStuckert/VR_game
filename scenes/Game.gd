extends Node3D
class_name Game

@export var player: Player
@export var ui: UI

# Get the time dictionary
var time = Time.get_time_dict_from_system()

func _ready():
	if !player.updated_speed_modifier_x.is_connected(ui.update_x_label):
		player.updated_speed_modifier_x.connect(ui.update_x_label)

	if !player.updated_speed_modifier_y.is_connected(ui.update_y_label):
		player.updated_speed_modifier_y.connect(ui.update_y_label)

	player.emit_speed_modifiers();
