extends VehicleBody3D

@export var wheels: Array[RaycastWheel]

func _ready() -> void:
	# Run any setup
	pass

func _physics_process(delta: float) -> void:
	for wheel in wheels:
		_do_single_suspension(wheel)
	# Later, handle acceleration, steering, braking here.

func _do_single_suspension(ray: RaycastWheel) -> void:
	pass
