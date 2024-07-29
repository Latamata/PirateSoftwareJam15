extends CharacterBody2D

@onready var winner = $"../../winner"


func _on_item_button_down():
	Globals.shadowEnabled = true 
	if Globals.chamomileCount >= 1 || Globals.mintCount >= 1 || Globals.mushroomCount >= 1 :
		Globals.add_to_cauldron()
	if Globals.chamomileCauldronCCount == 3 and Globals.mintCauldronCCount == 3 and Globals.mushroomCauldronCount == 3:
		winner.visible = true
		Globals.shadowEnabled = true 
		print("Player has collected all the herbs")
