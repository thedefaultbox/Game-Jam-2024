extends Control
#Script for the Main Menu Scene #GTB


#Button starts the game #GTB
func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/temp_sceen_level_1.tscn")

#Button opens the settings #GTB
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Menu/settings/settings_menu.tscn")

#Button plays the Credits #GTB
func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits/credits.tscn")

<<<<<<< HEAD
#Button terminates window #GTB
=======
#Button opens the shop
func _on_shop_pressed():
	get_tree().change_scene_to_file("res://Shop/Shop.tscn")
	
#Button terminates window
>>>>>>> c9b95eecb038a210ca80c5195f8a9dda854f7926
func _on_quit_pressed():
	get_tree().quit()
