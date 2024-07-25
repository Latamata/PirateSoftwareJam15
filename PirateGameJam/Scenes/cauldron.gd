extends Area2D



func _on_item_button_down():
	print(Globals.chamomileCount )
	if Globals.chamomileCount >= 1 || Globals.mintCount >= 1 || Globals.mushroomCount >= 1 :
		Globals.add_to_cauldron()
