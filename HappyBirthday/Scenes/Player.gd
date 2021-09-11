extends Node2D

export (float) var speed = 300


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_viewport().size)
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		# Move as long as the key/button is pressed.
		position.x += speed * delta
	if Input.is_action_pressed("ui_left"):
		# Move as long as the key/button is pressed.
		position.x -= speed * delta
	if Input.is_action_pressed("ui_up"):
		# Move as long as the key/button is pressed.
		position.y -= speed * delta
	if Input.is_action_pressed("ui_down"):
		# Move as long as the key/button is pressed.
		position.y += speed * delta
	position.x = clamp(position.x,5,get_viewport().size.x-5)
	position.y = clamp(position.y,5,get_viewport().size.y-5)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
