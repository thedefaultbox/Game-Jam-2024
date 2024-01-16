extends Label
#Script to make text or other nodes "invisible" for debug porposes #GTB


#Variable pointer to self #GTB
@onready var label = $"."


# Called when the node enters the scene tree for the first time. #GTB
func _ready():
	_debug_mode()


# Called every frame. 'delta' is the elapsed time since the previous frame. #GTB
func _process(_delta):
	
	#toggle debug mode #GTB
	if Input.is_action_just_pressed("debug") and global.toggle_debug == false :
		label.visible = true
		global.toggle_debug = true
	elif Input.is_action_just_pressed("debug") and global.toggle_debug == true:
		label.visible = false
		global.toggle_debug = false

#debug toggle visible function #GTB
func _debug_mode():
	if global.toggle_debug == false:
		label.visible = false
	else:
		label.visible = true

