extends Container
@onready var camsize_x : float
@onready var camsize_y : float

# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_get_size()
	camsize_x = get_viewport().get_visible_rect().size.x
	camsize_y = get_viewport().get_visible_rect().size.y
	set_global_position(Vector2(camsize_x,0.0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_esc_key_toggled(toggled_on: bool):
	get_node("/root/Main/player").freeze = true
	move_toward(camsize_x,0,100)
