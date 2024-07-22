extends Node2D

func _ready():
	# Initial call to set the z_index based on initial positions
	update_z_index()

func _process(_delta):
	# Call this function every frame to update z_index based on current positions
	update_z_index()

func update_z_index():
	for child in get_children():
		if child is Node2D:  # Ensure the child is a Node2D or derived type
			#the +60 is to compensate for the y going below zero
			#which makes player appear behind the ground
			child.z_index = int(child.position.y + 60)
