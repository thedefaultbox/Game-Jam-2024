extends Node

class_name PlayerBalance

var points
var credits

func _init():
	points = 0
	credits = 0

func addpoints(amount):
	points += amount
		
func addcredits(amount):
	credits += amount
	print(credits)
	
func subpoints(amount):
	credits -= amount
	
func subcredits(amount):
	points -= amount

func balance():
	return {"points": points, "credits": credits}
