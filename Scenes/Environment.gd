extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_SPACE):
		self.set_cell(get_node("../Player").position.x / 16 + 1, get_node("../Player").position.y / 16, 0)
	if Input.is_key_pressed(KEY_J):
		self.set_cell(get_node("../Player").position.x / 16 + 1, get_node("../Player").position.y / 16, 1)
