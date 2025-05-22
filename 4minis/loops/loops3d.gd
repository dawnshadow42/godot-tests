extends Node3D
@export var spawn_count:int=300
var star_scene=preload("res://loops/star.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in spawn_count:
		var star=star_scene.instantiate()
		add_child(star)
		star.position.x=randi_range(-720,720)
		star.position.y=randi_range(-720,720)
		var star_size=randf_range(0.2,2.0)
		star.scale.x=star_size
		star.scale.y=star_size
