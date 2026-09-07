extends Node

var settings: Dictionary = {
	"master_volume": 1.0,
	"music_volume": 1.0,
	"sfx_volume": 1.0,
	"fullscreen": false,
	"mouse_sensitivity": 1.0
}

func set_setting(key: String, value) -> void:
	settings[key] = value

func get_setting(key: String, default_value = null):
	return settings.get(key, default_value)