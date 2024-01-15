extends Control
#Script for the Main Menu Scene


#Button starts the game
func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/temp_sceen_level_1.tscn")

#Button opens the settings
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Menu/settings/settings_menu.tscn")

#Button plays the Creadits
func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits/credits.tscn")

#Button terminates window
func _on_quit_pressed():
	get_tree().quit()
