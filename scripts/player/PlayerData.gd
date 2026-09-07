class_name PlayerData
extends Resource

@export var health: float = 100.0
@export var max_health: float = 100.0
@export var money: int = 0
@export var experience: int = 0
@export var level: int = 1

func take_damage(amount: float) -> void:
	health = max(health - amount, 0.0)

func heal(amount: float) -> void:
	health = min(health + amount, max_health)

func add_experience(amount: int) -> void:
	experience += amount