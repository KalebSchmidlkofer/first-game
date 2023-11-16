extends Area2D

const file_path = "res://worlds/level_"

func _on_body_entered(body):
	if body.name == 'Player':
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1		
		var next_level = file_path + str(next_level_number) + '.tscn'
		
