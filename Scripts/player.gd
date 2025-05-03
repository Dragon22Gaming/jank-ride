extends RigidBody2D

@onready var front_wheel = $Front_Wheel/Wheel
@onready var back_wheel = $Back_Wheel/Wheel

func _physics_process(delta: float) -> void:
	var SPEED := 32
	
	if Input.is_action_pressed("right"):
		front_wheel.angular_velocity = SPEED
		back_wheel.angular_velocity = SPEED
	
	elif Input.is_action_pressed("left"):
		front_wheel.angular_velocity = -SPEED
		back_wheel.angular_velocity = -SPEED
