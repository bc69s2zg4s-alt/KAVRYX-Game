extends Node

var game_started: bool = false
var current_level: String = ""

func start_game() -> void:
	game_started = true

func end_game() -> void:
	game_started = false

func set_level(level_path: String) -> void:
	current_level = level_path