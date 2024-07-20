extends Area2D

func _on_door_button_down():
	print("button pressed")
	$Timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/cabin_inside.tscn")
