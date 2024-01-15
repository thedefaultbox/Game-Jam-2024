extends Label


@onready var label = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	_debug_mode()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	#toggle debug mode
	if Input.is_action_just_pressed("debug") and global.toggle_debug == false :
		label.visible = true
		global.toggle_debug = true
	elif Input.is_action_just_pressed("debug") and global.toggle_debug == true:
		label.visible = false
		global.toggle_debug = false


func _debug_mode():
	if global.toggle_debug == false:
		label.visible = false
	else:
		label.visible = true

