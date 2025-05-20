extends RigidBody2D
var hit_force:float=50.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dir=global_position.direction_to(get_global_mouse_position())
		apply_impulse(dir*hit_force)
		$sbmax.play()
func _on_body_entered(body):
	$sbmin.play()
