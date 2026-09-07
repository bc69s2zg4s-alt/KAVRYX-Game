extends Node

func get_movement_input() -> Vector2:
	return Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
		"move_backward"
	)

func is_jump_pressed() -> bool:
	return Input.is_action_just_pressed("jump")