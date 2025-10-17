extends Node

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
	pass
