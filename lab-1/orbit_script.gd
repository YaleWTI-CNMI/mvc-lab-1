extends Camera3D

@export var target: Node3D
@export var distance := 8.0
var yaw := 0.0
var pitch := -0.4

func _ready():
	if target == null:
		target = get_parent()
	_update_transform()

func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		yaw -= event.relative.x * 0.01
		pitch = clamp(pitch - event.relative.y * 0.01, -1.3, 1.3)
		_update_transform()
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
		distance = max(1.5, distance * 0.9); _update_transform()
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
		distance *= 1.1; _update_transform()
	if event is InputEventKey and event.keycode == KEY_LEFT:
		distance = max(1.5, distance * 0.9); _update_transform()
	if event is InputEventKey and event.keycode == KEY_RIGHT:
		distance *= 1.1; _update_transform()



func _update_transform():
	var rot := Basis(Vector3.UP, yaw) * Basis(Vector3.RIGHT, pitch)
	global_transform.origin = target.global_transform.origin + rot * Vector3(0, 0, distance)
	look_at(target.global_transform.origin, Vector3.UP)
