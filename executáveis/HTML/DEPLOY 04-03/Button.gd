extends Button

func _toggled(button_pressed):
	print("hey")
	get_tree().change_scene_to(load("res://scene 2.tscn"))
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
