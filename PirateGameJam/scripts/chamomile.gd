extends Area2D

var playerWithin = false
var id = ""  # Unique identifier for each chamomile instance

func _on_item_button_down():
	if playerWithin:
		Globals.chamomileCount += 1
		Globals.chamomiles.erase(id)  
		print("chamomileCount: ", id)
		queue_free()

func _on_body_entered(body):
	if body.name == "player":
		playerWithin = true

func _on_body_exited(body):
	if body.name == "player":
		playerWithin = false
