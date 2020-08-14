extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
		self.set_cell(get_global_mouse_position().x / 16, get_global_mouse_position().y / 16, 0)
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		self.set_cell(get_global_mouse_position().x / 16, get_global_mouse_position().y / 16, 1)
	if Input.is_action_just_released('wheel_up'):
		if get_node("../Player/Camera2D").zoom.x >= 0.5:
			get_node("../Player/Camera2D").zoom.x -= 0.25
			get_node("../Player/Camera2D").zoom.y -= 0.25
	if Input.is_action_just_released('wheel_down'):
		if get_node("../Player/Camera2D").zoom.x <= 5:
			get_node("../Player/Camera2D").zoom.x += 0.25
			get_node("../Player/Camera2D").zoom.y += 0.25
