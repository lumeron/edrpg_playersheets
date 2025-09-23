extends Control

onready var rnd_betweenAdventures = load("res://scripts/random_betweenAdventures.gd").new()
onready var rnd_combat_ship_criticalHit = load("res://scripts/random_combat_ship_criticalHit.gd").new()
onready var rnd_crew_name = load("res://scripts/random_crew_name.gd").new()
onready var rnd_crew_skills = load("res://scripts/random_crew_skills.gd").new()
onready var rnd_d10 = load("res://scripts/random_d10.gd").new()
onready var rnd_d100 = load("res://scripts/random_d100.gd").new()
onready var rnd_partner = load("res://scripts/random_partner.gd").new()

onready var text_box = $ScrollContainer/VBoxContainer/TextEdit

func _ready():
	pass


func _unhandled_input(_event):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().set_input_as_handled()
		#rnd_partner.roll_partner()
		#rnd_combat_ship_criticalHit.roll_ship_critical()
		#rnd_crew_name.roll_crew_name()
		#rnd_d10.roll_d10()
		#rnd_d100.roll_d100()
		#rnd_betweenAdventures.roll_betweenAdventures()
		pass
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().set_input_as_handled()
		get_tree().quit()


func _on_1d10_pressed():
	text_box.text = rnd_d10.roll_d10()
	pass


func _on_1d100_pressed():
	text_box.text = rnd_d100.roll_d100()
	pass


func _on_safe_trading_pressed():
	text_box.text = rnd_betweenAdventures.safe_trading()
	pass


func _on_safe_trading_value_pressed():
	text_box.text = rnd_betweenAdventures.roll_safe_trading_value()
	pass


func _on_asteroid_mining_pressed():
	text_box.text = rnd_betweenAdventures.asteroid_mining()
	pass


func _on_asteroid_mining_value_pressed():
	text_box.text = rnd_betweenAdventures.roll_asteroid_mining_value()
	pass


func _on_exploration_pressed():
	text_box.text = rnd_betweenAdventures.exploration()
	pass


func _on_bounty_hunting_pressed():
	text_box.text = rnd_betweenAdventures.bounty_hunting()
	pass


func _on_bounty_hunting_risk_number_pressed():
	text_box.text = rnd_betweenAdventures.bounty_hunting_risk_number()
	pass


func _on_employee_name_pressed():
	text_box.text = rnd_crew_name.roll_crew_name()
	pass


func _on_employee_skills_pressed():
	text_box.text = rnd_crew_skills.roll_crew_skills()
	pass

