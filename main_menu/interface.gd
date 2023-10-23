extends Control
@onready var main_structure = $Main_structure as Control
@onready var settings = $Settings as Settings
# Called when the node enters the scene tree for the first time.
func _ready():
	settings.exit_button_signal.connect(_on_return_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if main_structure.visible == false:
			main_structure.visible = true
			settings.visible = false
		else:
			main_structure.visible = false
			settings.visible = true




func _on_quit_button_pressed():
	get_tree().quit()


# go to the settings menu
func _on_settings_pressed():
	main_structure.visible = false
	settings.visible = true
	
func _on_return_button_pressed():
	main_structure.visible = true
	settings.visible = false
