extends Button
#This Script is to allow user to change keybinds to their preference #GTB

#Variables for keyboard input remaping
@export var action : String
@onready var input_mapper = $".."

#set button to be a toggle button on intial sceen #GTB
func _init():
	toggle_mode = true

#On Scene ready set unhandled input to false #GTB
func _ready():
		set_process_unhandled_input(false)
		

#When button is pressed change text #GTB
func _toggled(button_pressed):
	set_process_unhandled_input(button_pressed)
	if button_pressed:
		text = "Awaiting Input"

#When input is received run a list of functions #GTB
func _unhandled_input(event):
	if event.pressed:
		InputMap.action_erase_events(action)
		InputMap.action_add_event(action, event)
		button_pressed = false
		release_focus()
		update_text()
		input_mapper.keymaps[action] = event
		input_mapper.save_keymap()

#Updates text display on button to new keybind #GTB
func update_text():
	text = InputMap.action_get_events(action)[0].as_text()
