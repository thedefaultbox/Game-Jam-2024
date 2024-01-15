extends Button
#This Script is to allow user to change keybinds to their preference

@export var action : String
@onready var input_mapper = $".."


func _init():
	toggle_mode = true

#On Scene ready set unhandled input to false
func _ready():
		set_process_unhandled_input(false)
		

#When button is pressed change text
func _toggled(button_pressed):
	set_process_unhandled_input(button_pressed)
	if button_pressed:
		text = "Awaiting Input"

#When input is received run a list of functions
func _unhandled_input(event):
	if event.pressed:
		InputMap.action_erase_events(action)
		InputMap.action_add_event(action, event)
		button_pressed = false
		release_focus()
		update_text()
		input_mapper.keymaps[action] = event
		input_mapper.save_keymap()

#Updates text display on button to new keybind
func update_text():
	text = InputMap.action_get_events(action)[0].as_text()
