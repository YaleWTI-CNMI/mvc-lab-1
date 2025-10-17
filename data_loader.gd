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
	# Call the load csv function in order to load the data
	
	load_from_csv()
	
	print(data)
	
	spawn_points()
	pass

func spawn_points() -> void:
	# Please research the preload(...), add_child(...), PackedScene.instantiate(...) methods
	# Relevant docs:
	# - https://docs.godotengine.org/en/stable/tutorials/scripting/nodes_and_scene_instances.html
	
	for i in range(500):
		var new_point = preload("res://point_scene.tscn").instantiate()
		add_child(new_point)
		new_point.position = Vector3(float(data["x"][i]), float(data["y"][i]), float(data["z"][i]))
	pass


func _on_h_slider_value_changed(value: float) -> void:
	self.transform = Basis().scaled(Vector3(value * 0.1, 1, 1))
