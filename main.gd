extends Control

func _ready() -> void:
	# show and free mouse (reset 3D scenes mouse capture)
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _input(_event: InputEvent) -> void:
	# escape ends the game
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func _on_button_3_do_pressed() -> void:
	get_tree().change_scene_to_file("res://original/3d.tscn") 

func _on_button_3_du_pressed() -> void:
	get_tree().change_scene_to_file("res://improved/3d.tscn") 

func _on_button_2_do_pressed() -> void:
	get_tree().change_scene_to_file("res://original/2d.tscn")

func _on_button_2_du_pressed() -> void:
	get_tree().change_scene_to_file("res://improved/2d_jumpAndRun.tscn")

func _on_button_2_du_tank_pressed() -> void:
	get_tree().change_scene_to_file("res://improved/2d_tank.tscn")
