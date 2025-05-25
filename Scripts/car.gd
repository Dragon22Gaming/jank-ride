extends VehicleBody3D

@export var wheels: Array[RaycastWheel]

func _ready() -> void:
	# Run any setup
	pass

func _physics_process(delta: float) -> void:
	for wheel in wheels:
		_do_single_suspension(wheel)
	# Later, handle acceleration, steering, braking here.

func _get_point_velocity(point: Vector3) -> Vector3:
	return linear_velocity + angular_velocity.cross(point - global_position)

func _do_single_suspension(ray: RaycastWheel) -> void:
	if ray.is_colliding():
			ray.target_position.y = -(ray.rest_dist + ray.wheel_radius + 0.2)
			var contact := ray.get_collision_point()
			var spring_up_dir := ray.global_transform.basis.y
			var spring_len := ray.global_position.distance_to(contact) - ray.wheel_radius
			var offset := ray.rest_dist - spring_len
			
			ray.wheel.position.y = -spring_len
			
			var spring_force := ray.spring_stiffness * offset
			
			# damping force = damping * relative velocity
			var world_vel := _get_point_velocity(contact)
			
			# CONTINUE
