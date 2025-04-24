class_name Player
extends CharacterBody2D



@onready
var movement_animations: AnimatedSprite2D = $AnimatedSprite2D
@onready 
var movement_state_machine: Node = $StateMachine
@onready 
var move_component: Node = $Movement

func _ready() -> void:
	movement_state_machine.init(self, movement_animations, move_component)

func _unhandled_input(event: InputEvent) -> void:
	movement_state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	movement_state_machine.process_physics(delta)

func _process(delta: float) -> void:
	movement_state_machine.process_frame(delta)
