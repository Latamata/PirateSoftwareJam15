extends Node2D
var playerOne: PackedScene = preload("res://Scenes/player.tscn")
func _on_door_button_down():
	print(Globals.chamomileCount)
	$Timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/forest.tscn")
