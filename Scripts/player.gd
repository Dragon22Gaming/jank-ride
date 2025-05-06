extends RigidBody2D

@onready var front_wheel = $Front_wheel
@onready var back_wheel = $Rear_wheel
@export_category("Da Car")
@export var acceleration := 0.06
@export var SPEED : float = 22.0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("right"):
		front_wheel.angular_velocity = lerp(front_wheel.angular_velocity, SPEED, acceleration)
		back_wheel.angular_velocity = lerp(back_wheel.angular_velocity, SPEED, acceleration)
	
	elif Input.is_action_pressed("left"):
		front_wheel.angular_velocity = lerp(front_wheel.angular_velocity, -SPEED, acceleration)
		back_wheel.angular_velocity = lerp(back_wheel.angular_velocity, -SPEED, acceleration)
