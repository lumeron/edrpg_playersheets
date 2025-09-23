extends Control

onready var roll_box = $charactersheet_panel/RollOutcomeLabel
onready var roll_explanation = $charactersheet_panel/RollExplanationLabel

var character_sheet_path = "user://stardusters_charactersheet.res"
var data_dict: Dictionary = {}

signal roll_button_clicked

func _ready():
	connect_buttons()
	load_sheet()


func _input(_event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().set_input_as_handled()
		save_sheet()
		get_tree().quit()


	if Input.is_action_just_pressed("scroll_up"):
		get_tree().set_input_as_handled()
		var zoom = $Camera2D.get_zoom()
		if zoom[0] >= 0.4:
			zoom[0] -= 0.1
			zoom[1] -= 0.1
		$Camera2D.set_zoom(zoom)
	if Input.is_action_just_pressed("scroll_down"):
		get_tree().set_input_as_handled()
		var zoom = $Camera2D.get_zoom()
		if zoom[0] <= 3.0:
			zoom[0] += 0.1
			zoom[1] += 0.1
		$Camera2D.set_zoom(zoom)


func roll_skill(button_number: String):
	var numbers = []
	numbers.append(roll_d10())
	numbers.append(get_node("charactersheet_panel/skills/bonuses/BonusLabel%s" % button_number).text.to_int())
	roll_box.text = str(numbers[0] + numbers[1])
	roll_explanation.text = str("1d10 (" + str(numbers[0]) + "), bonus (" + str(numbers[1]) + ")")


func roll_d10():
	var r: int = randi() % 10 + 1
	return r


func connect_buttons():
	# the only reason there is a - 1 is because another button exists in the same container. Be careful about adding or removing any buttons in the container.
	for i in $charactersheet_panel/skills/skillbuttons.get_child_count():
		get_node("charactersheet_panel/skills/skillbuttons/SkillButton%02d" % (i + 1)).connect("pressed",self,"roll_skill",["%02d" % (i + 1)])


func save_sheet() -> void:
	var i: int = 0
	var new_array = []
	
	# get character_section
	for item in $charactersheet_panel/character_section.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["character_section"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get backgrounds
	for item in $charactersheet_panel/backgrounds.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["backgrounds"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get skills/skillscores
	for item in $charactersheet_panel/skills/skillscores.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["skillscores"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get skills/checkboxes
	for item in $charactersheet_panel/skills/checkboxes.get_children():
		new_array.append(item.pressed)
		i += 1
	data_dict["skillcheckboxes"] = new_array
		
	# get enhancements
	data_dict["enhancements"] = $charactersheet_panel/enhancements/EnhancementsTextEdit.text
		
	# reset common variables
	i = 0
	new_array = []
	# get ranged_weapons
	for item in $charactersheet_panel/ranged_weapons.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["ranged_weapons"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get close_combat
	for item in $charactersheet_panel/close_combat.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["close_combat"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get karma_capabilities
	for item in $charactersheet_panel/karma_capabilities.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["karma_capabilities"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get carried_weapons
	for item in $charactersheet_panel/carried_weapons.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["carried_weapons"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get clothing
	for item in $charactersheet_panel/clothing.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["clothing"] = new_array
	
	# reset common array, counter not required
	new_array = []
	# get clothing equipped indicator
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox01.pressed)
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox02.pressed)
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox03.pressed)
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox04.pressed)
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox05.pressed)
	new_array.append($charactersheet_panel/clothing/ClothingWornCheckBox06.pressed)
	data_dict["clothing_pressed"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get equipment_in_pack
	for item in $charactersheet_panel/equipment_in_pack.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["equipment_in_pack"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get cash
	for item in $charactersheet_panel/cash.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["cash"] = new_array
	
	# reset common variables
	i = 0
	new_array = []
	# get equipment_in_ship
	for item in $charactersheet_panel/equipment_in_ship.get_children():
		new_array.append(item.text)
		i += 1
	data_dict["equipment_in_ship"] = new_array
	
	# save the populated data_dict to a file
	var file = File.new()
	file.open(character_sheet_path, File.WRITE)
	file.store_var(data_dict, true)
	file.close()


func load_sheet() -> void:
	# load the populated data_dict to a file, if it exists
	var file = File.new()
	if file.file_exists(character_sheet_path):
		file.open(character_sheet_path,File.READ)
		data_dict = file.get_var()
		file.close()
		
		# initialize counter
		var i: int = 0
		var textboxes
		var data
		
		# populate character_section details
		if data_dict.has("character_section"):
			textboxes = $charactersheet_panel/character_section.get_children()
			data = data_dict["character_section"]
			for characterdetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate backgrounds details
		if data_dict.has("backgrounds"):
			textboxes = $charactersheet_panel/backgrounds.get_children()
			data = data_dict["backgrounds"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate skillscores details
		if data_dict.has("skillscores"):
			textboxes = $charactersheet_panel/skills/skillscores.get_children()
			data = data_dict["skillscores"]
			for skillvalue in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate clothing details
		if data_dict.has("skillcheckboxes"):
			textboxes = $charactersheet_panel/skills/checkboxes.get_children()
			data = data_dict["skillcheckboxes"]
			for backgrounddetail in data.size():
				textboxes[i].pressed = data[i]
				i += 1
		
		# set bonuses
		autocalculate_fields()
		
		# reset counter
		i = 0
		# populate enhancements details
		if data_dict.has("enhancements"):
			$charactersheet_panel/enhancements/EnhancementsTextEdit.text = data_dict["enhancements"]
		
		# reset counter
		i = 0
		# populate ranged_weapons details
		if data_dict.has("ranged_weapons"):
			textboxes = $charactersheet_panel/ranged_weapons.get_children()
			data = data_dict["ranged_weapons"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate close_combat details
		if data_dict.has("close_combat"):
			textboxes = $charactersheet_panel/close_combat.get_children()
			data = data_dict["close_combat"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate karma_capabilities details
		if data_dict.has("karma_capabilities"):
			textboxes = $charactersheet_panel/karma_capabilities.get_children()
			data = data_dict["karma_capabilities"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate carried_weapons details
		if data_dict.has("carried_weapons"):
			textboxes = $charactersheet_panel/carried_weapons.get_children()
			data = data_dict["carried_weapons"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate clothing details
		if data_dict.has("clothing"):
			textboxes = $charactersheet_panel/clothing.get_children()
			data = data_dict["clothing"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# populate clothing_pressed details
		if data_dict.has("clothing_pressed"):
			$charactersheet_panel/clothing/ClothingWornCheckBox01.pressed = data_dict["clothing_pressed"][0]
			$charactersheet_panel/clothing/ClothingWornCheckBox02.pressed = data_dict["clothing_pressed"][1]
			$charactersheet_panel/clothing/ClothingWornCheckBox03.pressed = data_dict["clothing_pressed"][2]
			$charactersheet_panel/clothing/ClothingWornCheckBox04.pressed = data_dict["clothing_pressed"][3]
			$charactersheet_panel/clothing/ClothingWornCheckBox05.pressed = data_dict["clothing_pressed"][4]
			$charactersheet_panel/clothing/ClothingWornCheckBox06.pressed = data_dict["clothing_pressed"][5]
		
		# reset counter
		i = 0
		# populate equipment_in_pack details
		if data_dict.has("equipment_in_pack"):
			textboxes = $charactersheet_panel/equipment_in_pack.get_children()
			data = data_dict["equipment_in_pack"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate cash details
		if data_dict.has("cash"):
			textboxes = $charactersheet_panel/cash.get_children()
			data = data_dict["cash"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1
		
		# reset counter
		i = 0
		# populate equipment_in_ship details
		if data_dict.has("equipment_in_ship"):
			textboxes = $charactersheet_panel/equipment_in_ship.get_children()
			data = data_dict["equipment_in_ship"]
			for backgrounddetail in data.size():
				textboxes[i].text = data[i]
				i += 1


func autocalculate_fields():
	var n: int = 0
	
	# transpose max karma and endurance
	$charactersheet_panel/character_section/MaxKarmaLabel.text = str("/ "+$charactersheet_panel/character_section/ChangeMaxKarmaLineEdit.text)
	$charactersheet_panel/character_section/MaxEnduranceLabel.text = str("/ "+$charactersheet_panel/character_section/ChangeMaxEnduranceLineEdit.text)
	
	# calculate bonuses
	var characterskills = $charactersheet_panel/skills/skillscores.get_children()
	var bonuses = $charactersheet_panel/skills/bonuses.get_children()
	for skillvalue in characterskills.size():
		bonuses[n].text = str(floor(characterskills[n].text.to_int() / 10))
		n += 1
	
	# transpose tactics, dodge, and parry
	$charactersheet_panel/character_section/InitiativeTacticsLabel.text = $charactersheet_panel/skills/bonuses/BonusLabel15.text
	$charactersheet_panel/character_section/DefenceDodgeLabel.text = $charactersheet_panel/skills/bonuses/BonusLabel01.text
	$charactersheet_panel/character_section/DefenceParryLabel.text = $charactersheet_panel/skills/bonuses/BonusLabel08.text


func _on_auto_save_timeout():
	save_sheet() 


func _on_auto_bonuses_timeout():
	autocalculate_fields()


func _on_SkillButtonCheckBoxes_pressed():
	var n: int = 0
	
	var checkboxes = $charactersheet_panel/skills/checkboxes.get_children()
	var skilltextboxes = $charactersheet_panel/skills/skillscores.get_children()
	for checked_skill in checkboxes.size():
		if checkboxes[n].pressed:
			skilltextboxes[n].text = str(skilltextboxes[n].text.to_int() + 1)
			checkboxes[n].pressed = false
		n += 1


func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		save_sheet()
		get_tree().quit()

