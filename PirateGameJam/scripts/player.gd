extends CharacterBody2D

var speed: int = 10000
@onready var boundary_area = get_parent().get_node("Playerarea")
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var light_occluder_2d = $LightOccluder2D
func _ready():
	if Globals.shadowEnabled:
		light_occluder_2d.visible = true
func _process(delta):	
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed * delta
	move_and_slide()
	confine_to_boundary()
	change_sprite_texture(direction)

func confine_to_boundary():
	var boundary_shape = boundary_area.get_node("CollisionShape2D").shape
	if boundary_shape is RectangleShape2D:
		var top_left = boundary_area.top_left
		var bottom_right = boundary_area.bottom_right
		# Constrain the player position within the boundaries
		global_position.x = clamp(global_position.x, top_left.x, bottom_right.x)
		global_position.y = clamp(global_position.y, top_left.y, bottom_right.y)


func change_sprite_texture(direction: Vector2):
	if direction.x > 0:
		animated_sprite_2d.frame = 0
		animated_sprite_2d.flip_h = false
	elif direction.x < 0:
		animated_sprite_2d.frame = 0
		animated_sprite_2d.flip_h = true
	elif direction.y < 0:
		animated_sprite_2d.frame = 2
	else:
		#animated_sprite_2d.flip_h = false
		animated_sprite_2d.frame = 1
