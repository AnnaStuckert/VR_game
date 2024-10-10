extends Control

class_name UI

@onready var fieldX = %FieldX
@onready var fieldY = %FieldY

func update_x_label(new_x: int):
	fieldX.text = str(new_x)

func update_y_label(new_y: int):
	fieldY.text = str(new_y)
