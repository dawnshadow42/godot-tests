extends Node3D
@export var score : int = 0
@export var score_text : Label

func increase_score (amount):
	score += amount
	$HUD/score_text.text = str("  Score: ", score)

func _on_multiples_child_exiting_tree(node: Node):
	get_node("easy_environment/MeshInstance3D/Decal").emission_energy = 0.15 * score
