extends Node3D


func _ready():
	var vert = get_node("Vertical lines/Area3D_Vertical")
	var vert2 = get_node("Vertical lines2/Area3D_Vertical")
	var vert3 = get_node("Vertical lines3/Area3D_Vertical")
	var vert4 = get_node("Vertical lines4/Area3D_Vertical")
	var vert5 = get_node("Vertical lines5/Area3D_Vertical")
	var vert6 = get_node("Vertical lines6/Area3D_Vertical")
# Getter function to access the value of Area3D_Diagonal_bump
func getVerticalBump() -> float:
	var vert = get_node("Vertical lines/Area3D_Vertical")
	var vert_val = vert.Area3D_Vertical_bump
	var vert2 = get_node("Vertical lines2/Area3D_Vertical")
	var vert_val2 = vert2.Area3D_Vertical_bump
	var vert3 = get_node("Vertical lines3/Area3D_Vertical")
	var vert_val3 = vert3.Area3D_Vertical_bump
	var vert4 = get_node("Vertical lines4/Area3D_Vertical")
	var vert_val4 = vert4.Area3D_Vertical_bump 
	var vert5 = get_node("Vertical lines5/Area3D_Vertical")
	var vert_val5 = vert5.Area3D_Vertical_bump
	var vert6 = get_node("Vertical lines6/Area3D_Vertical")
	var vert_val6 = vert6.Area3D_Vertical_bump
	var vert_sum = vert_val+vert_val2+vert_val3+vert_val4+vert_val5+vert_val6
	return vert_sum
	
