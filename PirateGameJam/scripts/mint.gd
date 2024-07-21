extends Area2D

var buttonClicked
var playerWithin

func _on_item_button_down():
	if playerWithin:
		Globals.mintCount += 1
		print("mintcount" ,Globals.mintCount)
		queue_free()

func _on_body_entered(body):
	if body.name == 'player':
		playerWithin = true


func _on_body_exited(body):
	if body.name == 'player':
		playerWithin = false
