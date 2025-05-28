extends RigidBody3D
@export var move_speed : float = 2.0
@export var tree_count : int = 0
var score_text

func _ready():
	score_text = get_parent().get_node("/root/Main/HUD/score_text")
	tree_count = 0

func _physics_process(_delta):
	if Input.is_key_pressed(KEY_LEFT):
		linear_velocity.x = -move_speed
	if Input.is_key_pressed(KEY_RIGHT):
		linear_velocity.x = move_speed
# Update score and display
	score_text.text = " Trees hit: " + str(tree_count)

func _on_body_entered(body):
	if body.is_in_group("tree"):
		tree_count += 1
		print(tree_count)
		if tree_count < 5:
			$sbmin.play()
		else:
			freeze = true
			$hsoops.play() 
	elif body.is_in_group("deathplane"):
		freeze = true
		$hsoops.play()
	elif body.is_in_group("winplane"):
		freeze = true
		$sbmax.play()

func _on_hsoops_finished():
	get_tree().reload_current_scene()
	freeze = false

func _on_sbmax_finished():
	get_parent().get_node("Menu").visible = true
	get_tree().paused = true
