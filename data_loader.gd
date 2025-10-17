extends Node3D

var data: Dictionary

func load_from_csv():
	var path = "res://points_csv.txt"
	var contents = FileAccess.open(path, FileAccess.READ).get_as_text()
	
	var lines = contents.split("\n")
	var columns = lines[0].split(",")
	
	for column in columns:
		data[column] = Array()
	
	for lidx in range(1, len(lines)):
		var vals = lines[lidx].split(",")
		if len(vals) >= len(columns):
			for cidx in range(len(columns)):
				data[columns[cidx]].append(vals[cidx])


func _ready() -> void:
	# Call the load csv function in order to load the data:
	# load_from_csv()
	
	print(data)
	
	spawn_points()
	pass

func spawn_points() -> void:
	# Please research the preload(...), add_child(...), PackedScene.instantiate(...) methods
	# Relevant docs:
	# - https://docs.godotengine.org/en/stable/tutorials/scripting/nodes_and_scene_instances.html
	
	pass
