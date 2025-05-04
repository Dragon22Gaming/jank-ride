extends StaticBody2D

@onready var terrain_polygon = $Terrain
@onready var player = $"../Player"
@onready var save_file = FileAccess.open("user://level1.save", FileAccess.WRITE_READ)

func _ready() -> void:
	if FileAccess.file_exists("user://level1.save"):
		print_debug("file exists!")
	save("Level1")

func save(level: String) -> void:
	var polygons: Array[Vector2]
	if level == "Level1":
		print_debug("Saving " + level)
		for polygon in terrain_polygon.polygon:
			polygons.append(polygon)
		save_file.store_var(polygons)
		save_file
