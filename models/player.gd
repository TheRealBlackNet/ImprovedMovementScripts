extends Node

func _ready() -> void:
	# this shows in 2D scenes the collision boxes
	var parent = get_parent()
	if  parent != null:
		if parent is Node2D:
			get_tree().set_debug_collisions_hint(true)
		else:
			get_tree().set_debug_collisions_hint(false)


func _input(_event: InputEvent) -> void:
	# this return to the main menue with press of escape
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://main.tscn") 
