extends Node

var is_paused: bool = false
var current_scene: String = ""

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS

func pause_game() -> void:
	is_paused = true
	get_tree().paused = true

func resume_game() -> void:
	is_paused = false
	get_tree().paused = false

func toggle_pause() -> void:
	if is_paused:
		resume_game()
	else:
		pause_game()

func change_scene(scene_path: String) -> void:
	current_scene = scene_path
	get_tree().change_scene_to_file(scene_path)