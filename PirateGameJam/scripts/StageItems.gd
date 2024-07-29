extends Node2D

var CHAMOMILE: PackedScene = preload("res://Scenes/chamomile.tscn")
var MINT: PackedScene = preload("res://Scenes/mint.tscn")
var MUSHROOM: PackedScene = preload("res://Scenes/mushroom.tscn")
@onready var player = $player

func _ready():	
	# Initial call to set the z_index based on initial positions
	var current_scene = get_tree().root.get_child(get_tree().root.get_child_count() - 1)

	if current_scene.name == 'Forest':
		if Globals.caveSwitch:
			player.position = Vector2(1750,50)
		for element in Globals.chamomiles:
			#print(element)
			# Create an instance of CHAMOMILE
			var chamomile_one = CHAMOMILE.instantiate()
			# Set the position of the instance
			chamomile_one.position = element
			chamomile_one.id = element
			# Add the instance to the current scene
			add_child(chamomile_one)
		for element in Globals.mints:
			## Create an instance of MINT
			var mint_one = MINT.instantiate()
			#print(element)
			## Set the position of the instance
			mint_one.position = element
			## Set the name of the instance
			mint_one.id = element
			## Add the instance to the current scene
			add_child(mint_one)
	if current_scene.name == "Cave":
		for element in Globals.mushrooms:
			## Create an instance of MINT
			var mint_one = MUSHROOM.instantiate()
			#print(element)
			## Set the position of the instance
			mint_one.position = element
			## Set the name of the instance
			mint_one.id = element
			## Add the instance to the current scene
			add_child(mint_one)
	update_z_index()

func _process(_delta):
	# Call this function every frame to update z_index based on current positions
	update_z_index()

func update_z_index():
	for child in get_children():
		if child is Node2D:  # Ensure the child is a Node2D or derived type
			#the +50 is to compensate for the y going below zero
			#which makes player appear behind the ground
			child.z_index = int(child.position.y + 50)

