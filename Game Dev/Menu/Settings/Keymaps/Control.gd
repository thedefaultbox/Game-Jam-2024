extends Control


#Back to Settings Button
func _on_back_to_settings_pressed():
	get_tree().change_scene_to_file("res://Menu/settings/settings_menu.tscn")
