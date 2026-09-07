extends Node

var current_scene: Node = null

func load_scene(scene_path: String) -> void:
	if not ResourceLoader.exists(scene_path):
		push_error("Сцена не найдена: " + scene_path)
		return

	get_tree().change_scene_to_file(scene_path)

func reload_scene() -> void:
	get_tree().reload_current_scene()

func quit_game() -> void:
	get_tree().quit()