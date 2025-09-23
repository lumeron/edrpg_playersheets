extends Node


func roll_d100():
	var r: int = randi() % 100 + 1
	
	return ("d100 roll: " + str(r))
