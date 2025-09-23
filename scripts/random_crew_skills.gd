extends Node

var piloting_bonus: String = ""
var weapons_bonus: String = ""
var systems_bonus: String = ""
var repair_bonus: String = ""
var combat_skill: String = ""
var morality: String = ""
var allegiance: String = ""
var salary: String = ""

var raise_salary_roll: int = 0


func roll_crew_skills():
	
	reset_vars()
	
	roll_piloting_bonus()
	roll_weapons_bonus()
	roll_systems_bonus()
	roll_repair_bonus()
	roll_combat_skill()
	roll_morality()
	roll_allegiance()
	roll_salary()
	
	return (piloting_bonus + "\n" + weapons_bonus + "\n" + systems_bonus + "\n" + repair_bonus + "\n" + combat_skill + "\n" + morality + "\n" + allegiance + "\n" + salary)


func reset_vars():
	piloting_bonus = "Piloting Bonus: "
	weapons_bonus = "Weapons Bonus: "
	systems_bonus = "Systems Bonus: "
	repair_bonus = "Repair Bonus: "
	combat_skill = "Combat Bonus: "
	morality = "Morality: "
	allegiance = "Allegiance: "
	salary = "Salary: "
	raise_salary_roll = 0


func roll_piloting_bonus():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			piloting_bonus += "1"
		2:
			piloting_bonus += "2"
		3:
			piloting_bonus += "2"
		4:
			piloting_bonus += "2"
		5:
			piloting_bonus += "3"
		6:
			piloting_bonus += "3"
		7:
			piloting_bonus += "3"
		8:
			piloting_bonus += "4"
			raise_salary_roll += 1
		9:
			piloting_bonus += "4"
			raise_salary_roll += 1
		10:
			piloting_bonus += "5"
			raise_salary_roll += 1
		_:
			pass


func roll_weapons_bonus():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			weapons_bonus += "1"
		2:
			weapons_bonus += "2"
		3:
			weapons_bonus += "2"
		4:
			weapons_bonus += "2"
		5:
			weapons_bonus += "3"
		6:
			weapons_bonus += "3"
		7:
			weapons_bonus += "4"
			raise_salary_roll += 1
		8:
			weapons_bonus += "4"
			raise_salary_roll += 1
		9:
			weapons_bonus += "5"
			raise_salary_roll += 1
		10:
			weapons_bonus += "6"
			raise_salary_roll += 1
		_:
			pass


func roll_systems_bonus():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			systems_bonus += "2"
		2:
			systems_bonus += "2"
		3:
			systems_bonus += "3"
		4:
			systems_bonus += "3"
		5:
			systems_bonus += "3"
		6:
			systems_bonus += "4"
			raise_salary_roll += 1
		7:
			systems_bonus += "4"
			raise_salary_roll += 1
		8:
			systems_bonus += "4"
			raise_salary_roll += 1
		9:
			systems_bonus += "5"
			raise_salary_roll += 1
		10:
			systems_bonus += "5"
			raise_salary_roll += 1
		_:
			pass


func roll_repair_bonus():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			repair_bonus += "2"
		2:
			repair_bonus += "3"
		3:
			repair_bonus += "3"
		4:
			repair_bonus += "3"
		5:
			repair_bonus += "4"
			raise_salary_roll += 1
		6:
			repair_bonus += "4"
			raise_salary_roll += 1
		7:
			repair_bonus += "4"
			raise_salary_roll += 1
		8:
			repair_bonus += "5"
			raise_salary_roll += 1
		9:
			repair_bonus += "5"
			raise_salary_roll += 1
		10:
			repair_bonus += "6"
			raise_salary_roll += 1
		_:
			pass


func roll_combat_skill():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			combat_skill += "1"
		2:
			combat_skill += "1"
		3:
			combat_skill += "1"
		4:
			combat_skill += "2"
		5:
			combat_skill += "2"
		6:
			combat_skill += "2"
		7:
			combat_skill += "3"
		8:
			combat_skill += "3"
		9:
			combat_skill += "4"
			raise_salary_roll += 1
		10:
			combat_skill += "5"
			raise_salary_roll += 1
		_:
			pass


func roll_morality():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			morality += "None"
		2:
			morality += "None"
		3:
			morality += "None"
		4:
			morality += "Indifferent"
		5:
			morality += "Indifferent"
		6:
			morality += "Indifferent"
		7:
			morality += "Indifferent"
		8:
			morality += "Principled"
		9:
			morality += "Principled"
		10:
			morality += "Principled"
		_:
			pass


func roll_allegiance():
	var r: int = round(rand_range(1,10))
	match r:
		1:
			allegiance += "None"
		2:
			allegiance += "None"
		3:
			allegiance += "None"
		4:
			allegiance += "None"
		5:
			allegiance += "Empire"
		6:
			allegiance += "Empire"
		7:
			allegiance += "Federation"
		8:
			allegiance += "Federation"
		9:
			allegiance += "Federation"
		10:
			allegiance += "Alliance"
		_:
			pass


func roll_salary():
	var r: int = round(rand_range(1,10))
	r += raise_salary_roll
	match r:
		1:
			salary += "500"
		2:
			salary += "1000"
		3:
			salary += "1500"
		4:
			salary += "2000"
		5:
			salary += "2500"
		6:
			salary += "3000"
		7:
			salary += "4000"
		8:
			salary += "5000"
		9:
			salary += "7500"
		10:
			salary += "10000"
		_:
			salary += "10000"
	pass
