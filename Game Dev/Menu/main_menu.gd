extends Control

@export var toggle_debug = false
@onready var label = $Label

func _init():
	#_debug_mode()
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#toggle debug mode
	if Input.is_action_just_pressed("debug") and toggle_debug == false :
		label.visible = true
		toggle_debug = true
	elif Input.is_action_just_pressed("debug") and toggle_debug == true:
		label.visible = false
		toggle_debug = false

func _debug_mode():
	if global.toggle_debug == false:
		label.visible = false
	else:
		label.visible = true
