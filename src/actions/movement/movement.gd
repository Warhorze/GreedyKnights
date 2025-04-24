class_name MovementActions
extends Node
	
func get_movement_direction() -> float:
	return 1.0

func wants_jump() -> bool:
	return false

func get_movement_speed() -> float:
	return self.move_speed
