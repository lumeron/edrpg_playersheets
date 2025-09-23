extends Camera2D

var pannable: bool = false
var current_reference_position: Vector2 = Vector2()

func _process(_delta):
	if pannable:
		if Input.is_action_pressed("scroll_pan"):
			position = current_reference_position - get_local_mouse_position()
#			position = get_local_mouse_position() + Vector2(800,400) #Vector2(576,324)


func _input(_event):
	if Input.is_action_just_pressed("scroll_pan"):
		get_tree().set_input_as_handled()
		current_reference_position = get_global_mouse_position()#Vector2(580,330)
		pannable = true
	if Input.is_action_just_released("scroll_pan"):
		get_tree().set_input_as_handled()
		pannable = false
