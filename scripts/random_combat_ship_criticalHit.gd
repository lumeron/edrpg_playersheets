extends Node

var component: String = ""


func roll_ship_critical():
	
	critical_target()
	print(component)
	
	return
	
	
func critical_target():
	var r: int = round(rand_range(1,10))
	print("===============")
	match r:
		1:
			component = "Power Plant"
		2:
			component = "Thrusters"
		3:
			component = "Frame Shift Drive"
		4:
			component = "Life Support"
		5:
			component = "Power Distributor"
		6:
			component = "Sensors"
		7:
			component = "Shield Generator"
		8:
			component = "Weapon - "
			critical_subtarget()
		9:
			component = "Utility Mount - "
			critical_subtarget()
		10:
			component = "Internal Component - "
			critical_subtarget()
		_:
			pass


func critical_subtarget():
	var n: int = round(rand_range(1,10))
	match n:
		1:
			component += "First Component on your ship roster"
		2:
			component += "Second Component on your ship roster"
		3:
			component += "Third Component on your ship roster"
		4:
			component += "Fourth Component on your ship roster"
		5:
			component += "Fifth Component on your ship roster"
		6:
			component += "Last Component on your ship roster"
		7:
			component += "Second to last Component on your ship roster"
		8:
			component += "Third to last Component on your ship roster"
		9:
			component += "Fourth to last Component on your ship roster"
		10:
			component += "Fifth to last Component on your ship roster"
		_:
			pass

