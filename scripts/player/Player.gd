extends CharacterBody3D

@export var speed: float = 5.0
@export var jump_velocity: float = 5.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= 9.8 * delta

	var input_vector := Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
		"move_backward"
	)

	var direction := Vector3(
		input_vector.x,
		0.0,
		input_vector.y
	)

	velocity.x = direction.x * speed
	velocity.z = direction.z * speed

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	move_and_slide()