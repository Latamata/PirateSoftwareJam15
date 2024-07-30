extends Area2D

var top_left
var bottom_right

func _ready():
	update_boundaries()

func update_boundaries():
	var collision_shape = $CollisionShape2D
	var shape = collision_shape.shape

	if shape is RectangleShape2D:
		var global_pos = collision_shape.global_position
		var extents = shape.extents
		# Calculate the corners of the RectangleShape2D
		top_left = global_pos - extents
		bottom_right = global_pos + extents
		#print("Top Left: ", top_left)
		#print("Bottom Right: ", bottom_right)
	else:
		print("Shape is not a RectangleShape2D")
	


func _on_body_entered(_body):
	update_boundaries()
