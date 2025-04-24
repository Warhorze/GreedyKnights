extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var collision_shape: CollisionShape2D = $CollisionShape2D


func trigger_sequence():
	audio_player.play()
	collision_shape.disabled = true
	animated_sprite.visible = false
	await audio_player.finished
	queue_free()
	
func _on_body_entered(body: Node2D) -> void:
	print("+1 coin") 
	game_manager.add_point()
	trigger_sequence()
