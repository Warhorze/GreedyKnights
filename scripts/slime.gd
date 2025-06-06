extends Node2D

const SPEED  : float = 30.0
var direction :  int = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():	
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():	
		direction = 1 
		animated_sprite_2d.flip_h = false
		
	position.x += SPEED * direction * delta
		
	
