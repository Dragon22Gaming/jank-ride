extends RayCast3D
class_name RaycastWheel

@export var spring_stiffness := 5000
@export var spring_damping := 140
@export var wheel_radius := 0.4
@export var wheel := get_child(0)
