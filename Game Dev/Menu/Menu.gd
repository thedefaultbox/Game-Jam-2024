extends Control
#Script for the Main Menu Scene #GTB


#Button starts the game #GTB
func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/temp_sceen_level_1.tscn")

#Button opens the settings #GTB
func _on_setings_pressed():
	get_tree().change_scene_to_file("res://Menu/settings/settings_menu.tscn")

#Button plays the Credits #GTB
func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits/credits.tscn")

#Button opens the shop #D.BoxS
func _on_shop_pressed():
	get_tree().change_scene_to_file("res://Shop/Shop.tscn")

#Button terminates window #GTB
func _on_quit_pressed():
	get_tree().quit()
