extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	position.x = get_node("/root/Main/player").position.x
	position.y = get_node("/root/Main/player").position.y + 3
	position.z = get_node("/root/Main/player").position.z + 4
