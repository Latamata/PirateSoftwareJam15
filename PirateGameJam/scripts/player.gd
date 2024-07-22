extends CharacterBody2D


var speed: int = 100
@onready var boundary_area = get_parent().get_node("Playerarea")
var nodes_to_update = []
func confine_to_boundary():
	var boundary_shape = boundary_area.get_node("CollisionShape2D").shape
	if boundary_shape is RectangleShape2D:
		var top_left = boundary_area.top_left
		var bottom_right = boundary_area.bottom_right
		# Constrain the player position within the boundaries
		global_position.x = clamp(global_position.x, top_left.x, bottom_right.x)
		global_position.y = clamp(global_position.y, top_left.y, bottom_right.y)

func _process(delta):
	#print(z_index)
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	position += direction * speed * delta
	move_and_slide()
	confine_to_boundary()
