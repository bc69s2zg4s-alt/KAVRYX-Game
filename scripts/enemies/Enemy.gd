extends CharacterBody3D

@export var speed: float = 2.0
@export var health: float = 100.0

func _physics_process(_delta: float) -> void:
	pass

func take_damage(amount: float) -> void:
	health -= amount

	if health <= 0:
		die()

func die() -> void:
	queue_free()