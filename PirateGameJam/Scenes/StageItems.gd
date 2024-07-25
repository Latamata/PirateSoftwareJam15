extends Node2D

var CHAMOMILE: PackedScene = preload("res://Scenes/chamomile.tscn")
var MINT: PackedScene = preload("res://Scenes/mushroom.tscn")
@onready var player = $player


func _ready():	
	# Initial call to set the z_index based on initial positions
	var current_scene = get_tree().root.get_child(get_tree().root.get_child_count() - 1)
	update_z_index()
	if current_scene.name == 'Forest':
		if Globals.caveSwitch:
			player.position = Vector2(1800,100)
		for element in Globals.ingredientsList:
			# Create an instance of CHAMOMILE
			var chamomile_one = CHAMOMILE.instantiate()
			# Set the position of the instance
			chamomile_one.position = Globals.ingredientsList[element]
			# Set the id of the instance
			chamomile_one.id = element
			# Add the instance to the current scene
			add_child(chamomile_one)
	elif current_scene.name == "Cave":
		for element in Globals.insideHouseStuff.keys():
			## Create an instance of MINT
			var mint_one = MINT.instantiate()
			print(element)
			## Set the position of the instance
			mint_one.position = Globals.insideHouseStuff[element]
			## Set the name of the instance
			mint_one.id = element
			## Add the instance to the current scene
			current_scene.add_child.call_deferred(mint_one)

func _process(_delta):
	# Call this function every frame to update z_index based on current positions
	update_z_index()

func update_z_index():
	for child in get_children():
		if child is Node2D:  # Ensure the child is a Node2D or derived type
			#the +60 is to compensate for the y going below zero
			#which makes player appear behind the ground
			child.z_index = int(child.position.y + 60)

func _on_door_button_down():
	var current_scene = get_tree().root.get_child(get_tree().root.get_child_count() - 1)
	print(current_scene.name)
	if current_scene.name == 'Forest':
		Globals.caveSwitch = false
		get_tree().change_scene_to_file("res://Scenes/cave.tscn")
	elif current_scene.name == 'Cave':
		Globals.caveSwitch = true
		get_tree().change_scene_to_file("res://Scenes/forest.tscn")
	else:
		Globals.caveSwitch = false
