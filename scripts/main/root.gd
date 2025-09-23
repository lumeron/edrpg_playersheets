extends Node

onready var randomizer_ui = preload("res://scenes/ui_random_generation.tscn")
onready var charactersheet_ui = preload("res://scenes/ui_character_sheet.tscn")

func _ready():
	randomize()
	#var newone = randomizer_ui.new()
	add_child(charactersheet_ui.instance())
	pass

