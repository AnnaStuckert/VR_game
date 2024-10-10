extends Node3D


func _ready():
	var diag = get_node("Diagonal lines/Area3D_Diagonal")
	var diag2 = get_node("Diagonal lines2/Area3D_Diagonal")
	var diag3 = get_node("Diagonal lines3/Area3D_Diagonal")
	var diag4 = get_node("Diagonal lines4/Area3D_Diagonal")
	var diag5 = get_node("Diagonal lines5/Area3D_Diagonal")
	var diag6 = get_node("Diagonal lines6/Area3D_Diagonal")

# Getter function to access the value of Area3D_Circle_bump
func getDiagonalBump() -> float:
	var diag = get_node("Diagonal lines/Area3D_Diagonal")
	var diag_val = diag.Area3D_Diagonal_bump
	var diag2 = get_node("Diagonal lines2/Area3D_Diagonal")
	var diag_val2 = diag2.Area3D_Diagonal_bump
	var diag3 = get_node("Diagonal lines3/Area3D_Diagonal")
	var diag_val3 = diag3.Area3D_Diagonal_bump
	var diag4 = get_node("Diagonal lines4/Area3D_Diagonal")
	var diag_val4 = diag4.Area3D_Diagonal_bump
	var diag5 = get_node("Diagonal lines5/Area3D_Diagonal")
	var diag_val5 = diag5.Area3D_Diagonal_bump
	var diag6 = get_node("Diagonal lines6/Area3D_Diagonal")
	var diag_val6 = diag6.Area3D_Diagonal_bump
	var diag_sum = diag_val+diag_val2+diag_val3+diag_val4+diag_val5+diag_val6
	return diag_sum
