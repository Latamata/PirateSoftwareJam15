extends Area2D

var buttonClicked
var playerWithin
var id
func _on_item_button_down():
	if playerWithin:
		Globals.mushroomCount += 1
		Globals.insideHouseStuff.erase(id)
		print("mushroomCount" ,Globals.mushroomCount)
		queue_free()

func _on_body_entered(body):
	if body.name == 'player':
		playerWithin = true


func _on_body_exited(body):
	if body.name == 'player':
		playerWithin = false
