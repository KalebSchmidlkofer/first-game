extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


func _on_levels_pressed():
	show()


func _on_back_pressed():
	hide()


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Levels/level_1.tscn")
	pass # Replace with function body.


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://worlds/level_2.tscn")
	pass # Replace with function body.


func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://worlds/level.tscn")
	pass # Replace with function body.


func _on_level_4_pressed():
	pass # Replace with function body.


func _on_level_5_pressed():
	pass # Replace with function body.


func _on_level_6_pressed():
	pass # Replace with function body.


func _on_level_7_pressed():
	pass # Replace with function body.


func _on_level_8_pressed():
	pass # Replace with function body.


func _on_level_9_pressed():
	pass # Replace with function body.
