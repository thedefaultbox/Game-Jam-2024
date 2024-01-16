extends Control
#Script of the Settings Sceen #GTB

#Toggles between Fullscreen and Windowed(Max) Mode #GTB
func _on_full_screen_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)


#Button to change the Scene for custom keybinds #GTB
func _on_keyboard_controls_pressed():
	get_tree().change_scene_to_file("res://Menu/Settings/Keymaps/input_mapper.tscn")

#Button to return to Main Menu #GTB
func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")
