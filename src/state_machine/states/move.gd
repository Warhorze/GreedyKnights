extends State

@export
var idle_state: State
@export
var jump_state: State

func process_input(event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	if get_jump() and parent.is_on_floor():
		return jump_state

	parent.velocity.y += gravity * delta

	var movement = get_movement_input() * get_movement_speed()
	
	if movement == 0:
		return idle_state
	
	animations.flip_h = movement < 0
	parent.velocity.x = movement
	parent.move_and_slide()

	return null
