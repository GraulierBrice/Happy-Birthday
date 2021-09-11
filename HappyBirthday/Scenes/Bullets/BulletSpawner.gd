extends Node2D


var bullet = preload("res://Scenes/Bullets/Bullet.tscn")

export(Vector2) var direction = Vector2()
export(float) var delay = 3
export(float) var reload_time = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Delay.start(delay)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Reload_timeout():
	var new_bullet = bullet.instance()
	new_bullet.direction = direction
	new_bullet.scale = self.scale
	new_bullet.position = global_position
	get_viewport().add_child(new_bullet)
	pass # Replace with function body.


func _on_Delay_timeout():
	$Reload.start(reload_time)
	pass # Replace with function body.
