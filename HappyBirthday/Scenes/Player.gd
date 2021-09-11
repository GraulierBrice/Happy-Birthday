extends Node2D

var bullet = preload("res://Scenes/Bullets/Bullet.tscn")

export (float) var speed = 500


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_viewport().size)
	pass # Replace with function body.
	
	
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		$Timer.start(0.1)
	if Input.is_action_just_released("shoot"):
		$Timer.stop()

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
	



func _on_Timer_timeout():
	var new_bullet = bullet.instance()
	new_bullet.speed = 25
	new_bullet.modulate = Color(0.8,0.8,0.8,0.8)
	new_bullet.scale = Vector2(0.3,0.5)
	new_bullet.direction = Vector2(0,-1)
	new_bullet.get_child(0).collision_mask = 1
	var bullet_2 = new_bullet.duplicate()
	new_bullet.position = global_position - Vector2(-10,0)
	bullet_2.position = global_position - Vector2(10, 0)
	get_viewport().add_child(new_bullet)
	get_viewport().add_child(bullet_2)
	pass # Replace with function body.
