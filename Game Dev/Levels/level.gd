extends Node2D
#IMPORTANT DO NOT DELETE FOR FUTURE USE


# Called when the node enters the scene tree for the first time. 
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame. 
func _process(delta):
	
	
	
	
	
	
	#If Shift + Escape is pressed Force close the game
	if Input.is_action_just_pressed("quick exit"):
		_quick_exit()




#Force close game #GTB
func _quick_exit():
		get_tree().quit()
