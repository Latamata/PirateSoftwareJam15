extends Node2D

var buttonClicked

func _on_item_button_down():
	buttonClicked = true
	print('Picked Herb')


func _on_body_entered(body):
	print(body.name)
	if body.name == 'player' && buttonClicked:
		queue_free()
		body.chamomileCount +=1
		print(body.chamomileCount)


func _on_body_exited(body):
	buttonClicked = false
