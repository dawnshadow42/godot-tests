extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Panel/Credits").visible = false
	
func ready():
	resume()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	testEsc()

# this is where I started following a tutorial

func resume():
	get_tree().paused = false
	hide()

func pause():
	get_tree().paused = true
	show()

func testEsc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

# this is where I ended following a tutorial

func _on_screen_a_pressed():
	
	get_tree().change_scene_to_file("res://balloon_popper/balloon_popper.tscn")
	hide()

func _on_screen_b_pressed():
	get_tree().change_scene_to_file("res://collision/collision.tscn")
	hide()

func _on_screen_c_pressed():
	get_tree().change_scene_to_file("res://physics/physics.tscn")
	hide()

func _on_quit_pressed():
	get_tree().quit()

func _on_unpause_pressed():
	resume()

func _on_credits_toggled(toggled_on: bool):
	if toggled_on == true:
		get_node("Panel/Credits").visible = true
		get_node("Panel/A_Desc").visible = false
	else:
		get_node("Panel/Credits").visible = false
		get_node("Panel/A_Desc").visible = true

func _on_start_button_pressed():
	pause()

func _on_pause_pressed():
	pause()

func _on_main_ready():
	resume()
