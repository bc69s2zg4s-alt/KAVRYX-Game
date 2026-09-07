extends Node

const SAVE_PATH := "user://save.json"

func save_game(data: Dictionary) -> void:
	var file := FileAccess.open(SAVE_PATH, FileAccess.WRITE)

	if file == null:
		return

	file.store_string(JSON.stringify(data))
	file.close()

func load_game() -> Dictionary:
	if not FileAccess.file_exists(SAVE_PATH):
		return {}

	var file := FileAccess.open(SAVE_PATH, FileAccess.READ)

	if file == null:
		return {}

	var content := file.get_as_text()
	file.close()

	var data = JSON.parse_string(content)

	if data is Dictionary:
		return data

	return {}

func delete_save() -> void:
	if FileAccess.file_exists(SAVE_PATH):
		DirAccess.remove_absolute(SAVE_PATH)