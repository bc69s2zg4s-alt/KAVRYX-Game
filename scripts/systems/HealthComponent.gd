class_name HealthComponent
extends Node

signal health_changed(current: float, maximum: float)
signal died

@export var max_health: float = 100.0

var health: float

func _ready() -> void:
	health = max_health

func damage(amount: float) -> void:
	if amount <= 0.0:
		return

	health = max(health - amount, 0.0)
	health_changed.emit(health, max_health)

	if health <= 0.0:
		died.emit()

func heal(amount: float) -> void:
	if amount <= 0.0:
		return

	health = min(health + amount, max_health)
	health_changed.emit(health, max_health)

func is_alive() -> bool:
	return health > 0.0