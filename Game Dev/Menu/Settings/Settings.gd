extends Control
#Script of the Settings Sceen

#Toggles between Fullscreen and Windowed(Max) Mode
func _on_full_screen_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)


#Button to change the Scene for custom keybinds
func _on_keyboard_controls_pressed():
	get_tree().change_scene_to_file("res://Menu/Settings/Keymaps/input_mapper.tscn")

#Button to return to Main Menu
func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")
