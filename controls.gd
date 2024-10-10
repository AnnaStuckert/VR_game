extends CharacterBody3D
class_name Player

signal updated_speed_modifier_x(int)
signal updated_speed_modifier_y(int)

var speed_modifier_x = 10
var speed_modifier_y = 10

var config_path = 'user://mouse-world.cfg';
var config = ConfigFile.new()

var time = Time.get_time_dict_from_system()

func _ready():
	var err = config.load(config_path)
	if err != OK:
		print("opening config file failed" +str(err))

	speed_modifier_x = config.get_value('input', 'speed_modifier_x', 10)
	speed_modifier_y = config.get_value('input', 'speed_modifier_y', 10)

	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	Input.use_accumulated_input = false

	_update_speed_modifier_x(speed_modifier_x)
	_update_speed_modifier_y(speed_modifier_y)
	pass

func _process(delta):
	pass

func _physics_process(delta):
	var speed = Input.get_last_mouse_velocity()

	velocity = Vector3(sin(rotation.y),0, cos(rotation.y)) * speed.y / 10000 * speed_modifier_y
	rotate_y(-speed.x / 1000000 * speed_modifier_x)

	move_and_slide()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()

	if event.is_action_pressed("incr_speed_x"):
		_update_speed_modifier_x(speed_modifier_x + 1)
	if event.is_action_pressed("incr_speed_y"):
		_update_speed_modifier_y(speed_modifier_y + 1)

	if event.is_action_pressed("decr_speed_x"):
		_update_speed_modifier_x(speed_modifier_x - 1)
	if event.is_action_pressed("decr_speed_y"):
		_update_speed_modifier_y(speed_modifier_y - 1)

func _update_speed_modifier_x(new_x):
	speed_modifier_x = max(1, new_x)
	config.set_value('input', 'speed_modifier_x', speed_modifier_x)
	config.save(config_path)
	updated_speed_modifier_x.emit(speed_modifier_x)

func _update_speed_modifier_y(new_y):
	speed_modifier_y = max(1, new_y)
	config.set_value('input', 'speed_modifier_y', speed_modifier_y)
	config.save(config_path)
	updated_speed_modifier_y.emit(speed_modifier_y)

func emit_speed_modifiers():
	updated_speed_modifier_x.emit(speed_modifier_x)
	updated_speed_modifier_y.emit(speed_modifier_y)
