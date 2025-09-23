extends Node


func roll_d10():
	var r: int = randi() % 10 + 1
	
	return ("d10 roll: " + str(r))
