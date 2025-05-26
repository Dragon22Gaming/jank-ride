extends VehicleBody3D

@export var wheels: Array[RaycastWheel]
@export var acceleration := 50.0
var motor_input := 0.0

func _unhandled_input(event):
	if event.is_action_pressed("accelerate"):
		motor_input = 1.0
	elif event.is_action_released("accelerate"):
		motor_input = 0.0
	
	if event.is_action_pressed("decelerate"):
		motor_input = -1.0
	elif event.is_action_released("decelerate"):
		motor_input = 0.0

func _ready() -> void:
	# Run any setup
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump (debug)"):
		# linear_velocity = 10
		set_physics_process(false)
		apply_central_impulse(Vector3.UP * 250)
		await get_tree().create_timer(0.3).timeout
		set_physics_process(true)

func _physics_process(delta: float) -> void:
	for wheel in wheels:
		_do_single_suspension(wheel)
		_do_single_wheel_acceleration(wheel)

func _get_point_velocity(point: Vector3) -> Vector3:
	return linear_velocity + angular_velocity.cross(point - global_position)

func _do_single_wheel_acceleration(ray: RaycastWheel) -> void:
	if ray.is_colliding() and ray.is_motor and (motor_input != 0):
		var forward_dir = -ray.global_basis.x
		var contact := ray.wheel.global_position
		var force_vector: Vector3 = forward_dir * acceleration * motor_input
		var force_pos := contact - global_position
		var projected_vector: Vector3 = (force_vector - ray.get_collision_normal() * force_vector.dot(ray.get_collision_normal()))
		apply_force(projected_vector, force_pos)

func _do_single_suspension(ray: RaycastWheel) -> void:
	if ray.is_colliding():
			ray.target_position.y = -(ray.rest_dist + ray.wheel_radius + ray.over_extend)
			var contact := ray.get_collision_point()
			var spring_up_dir := ray.global_transform.basis.y
			var spring_len := ray.global_position.distance_to(contact) - ray.wheel_radius
			var offset := ray.rest_dist - spring_len
			
			ray.wheel.position.y = -spring_len
			
			var spring_force := ray.spring_stiffness * offset
			
			# damping force = damping * relative velocity
			var world_vel := _get_point_velocity(contact)
			var relative_vel := spring_up_dir.dot(world_vel)
			var spring_damp_force := ray.spring_damping * relative_vel
			
			var force_vector := 	(spring_force - spring_damp_force) * spring_up_dir
			
			var force_pos_offset := contact - global_position
			
			apply_force(force_vector, force_pos_offset)
