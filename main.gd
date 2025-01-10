extends Control

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func _on_button_3_do_pressed() -> void:
	get_tree().change_scene_to_file("res://original/3d.tscn") 

func _on_button_3_du_pressed() -> void:
	get_tree().change_scene_to_file("res://improved/3d.tscn") 
