extends Node3D
@export var spawn_count:int=500
var star_scene=preload("res://loops/star.tscn")
var camsize_x:int
var camsize_y:int

# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_get_size()
	camsize_x = get_viewport().get_visible_rect().size.x
	camsize_y = get_viewport().get_visible_rect().size.y
	for i in spawn_count:
		var star=star_scene.instantiate()
		add_child(star)
		star.position.x=randi_range(0,camsize_x)
		star.position.y=randi_range(0,camsize_y)
		var star_size=randf_range(0.2,2.0)
		star.scale.x=star_size
		star.scale.y=star_size
