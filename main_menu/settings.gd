class_name Settings
extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



signal  exit_button_signal
func _on_exit_button_pressed():
	exit_button_signal.emit()
	
