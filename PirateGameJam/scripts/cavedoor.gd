extends Node2D

var atDoor = false

func _on_door_button_down():
	if atDoor:
		var current_scene = get_tree().root.get_child(get_tree().root.get_child_count() - 1)
		print(current_scene.name)
		if current_scene.name == 'Forest':
			Globals.caveSwitch = false
			get_tree().change_scene_to_file("res://Scenes/cave.tscn")
		elif current_scene.name == 'Cave':
			Globals.caveSwitch = true
			get_tree().change_scene_to_file("res://Scenes/forest.tscn")
		else:
			Globals.caveSwitch = false


func _on_body_entered(_body):
	atDoor = true

func _on_body_exited(_body):
	atDoor = false
