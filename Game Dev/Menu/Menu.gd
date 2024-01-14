extends Control




func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/temp_sceen_level_1.tscn")


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Menu/settings/settings_menu.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits/credits.tscn")


func _on_quit_pressed():
	get_tree().quit()
