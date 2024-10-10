extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var circles = get_node("Circles/Area3D_Circles")
	var circles2 = get_node("Circles2/Area3D_Circles")
	var circles3 = get_node("Circles3/Area3D_Circles")
	var circles4 = get_node("Circles4/Area3D_Circles")
	var circles5 = get_node("Circles5/Area3D_Circles")
	var circles6 = get_node("Circles6/Area3D_Circles")

# Getter function to access the value of Area3D_Circle_bump
func getCircleBump() -> float:
	var circles = get_node("Circles/Area3D_Circles")
	var circles_val = circles.Area3D_Circle_bump
	var circles2 = get_node("Circles2/Area3D_Circles")
	var circles2_val = circles2.Area3D_Circle_bump
	var circles3 = get_node("Circles3/Area3D_Circles")
	var circles3_val = circles3.Area3D_Circle_bump
	var circles4 = get_node("Circles4/Area3D_Circles")
	var circles4_val = circles4.Area3D_Circle_bump
	var circles5 = get_node("Circles5/Area3D_Circles")
	var circles5_val = circles5.Area3D_Circle_bump
	var circles6 = get_node("Circles6/Area3D_Circles")
	var circles6_val = circles6.Area3D_Circle_bump
	var circles_sum = circles_val+circles2_val+circles3_val+circles4_val+circles5_val+circles6_val
	return circles_sum
