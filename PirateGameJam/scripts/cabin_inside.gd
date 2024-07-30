extends Node2D

var playerOne: PackedScene = preload("res://Scenes/player.tscn")
#const DORM_DOOR_OPENING_6038 = preload("res://Assets/dorm-door-opening-6038.mp3")

func _on_door_button_down():
	$AudioStreamPlayer2D.play()
	print(Globals.chamomileCount)
	$Timer.start()


func _on_timer_timeout():
	Globals.caveSwitch = false
	get_tree().change_scene_to_file("res://Scenes/forest.tscn")
	
