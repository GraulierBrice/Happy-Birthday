extends Node2D

export(Color) var colour

export(Vector2) var direction = Vector2()
export(float) var speed = 2
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D/CollisionShape2D/Sprite.modulate = colour
	pass # Replace with function body.



func _process(delta):
	position += direction*speed
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	queue_free()
	pass # Replace with function body.
