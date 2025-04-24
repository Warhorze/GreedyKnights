extends Node

@onready 
var ray_cast_right: RayCast2D = $"../RayCastRight"
@onready 
var ray_cast_left: RayCast2D = $"../RayCastLeft"


var direction :int = 1
var move_speed : float = 30.0


# When a wall is touched, move in the opposite direction
func get_movement_direction() -> int:
	if ray_cast_right.is_colliding() or ray_cast_left.is_colliding():
		direction *= -1
	return direction
	

func wants_jump() -> bool:
	return false

func get_movement_speed() -> float:
	return move_speed
