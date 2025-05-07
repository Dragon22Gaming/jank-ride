extends StaticBody2D

@onready var terrain= $Terrain
@onready var collider = $Collider
@onready var save_file = FileAccess.open("user://level1.save", FileAccess.WRITE_READ)

func _ready() -> void:
	if FileAccess.file_exists("user://level1.save"):
		print_debug("file exists!")
	save("Level1")
	#show_terrain()

func save(level: String) -> void:
	var polygons: Array[Vector2]
	if level == "Level1":
		print_debug("Saving " + level)
		for polygon in collider.polygon:
			polygons.append(polygon)
		save_file.store_var(polygons)
		save_file

func show_terrain():
	var array = PackedVector2Array()
	for vertex in collider.polygon:
		array.append(vertex)
	terrain.polygon = array
