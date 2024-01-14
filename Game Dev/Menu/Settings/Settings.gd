extends Control


func _on_full_screen_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _on_keyboard_controls_pressed():
	get_tree().change_scene_to_file("res://Menu/Settings/Keymaps/input_mapper.tscn")



func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")
