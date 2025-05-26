extends Camera3D

@onready var car = get_node("Car")
var can_do_stuff := false

func _ready():
	await get_tree().create_timer(0.5).timeout
	can_do_stuff = true

func _physics_process(delta):
	var car := $"../Car"
	global_position = car.position + Vector3(0, 0, 10)
