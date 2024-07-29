extends Area2D
var atDoor = false
func _on_door_button_down():
	#print("button pressed")
	if atDoor:
		$Timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/cabin_inside.tscn")


func _on_body_entered(_body):
	atDoor = true


func _on_body_exited(_body):
	atDoor = false
