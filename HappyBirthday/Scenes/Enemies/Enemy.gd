extends PathFollow2D

export(float) var delay = 0
export(int) var speed = 100
export(float) var stop = 1
export(float) var stop_time = 0
export(int) var health = 5

var moving = false 
var has_stopped = false


func _ready():
	$Mover.start(delay)
	pass

func _process(delta):
	if moving:
		self.offset += speed*delta
		
	if self.unit_offset > stop and !has_stopped:
		moving = false
		has_stopped = true
		$Mover.start(stop_time)
		
	if self.unit_offset == 1:
		self.queue_free()
	pass


func _on_Area2D_area_entered(area):
	print("hello")
	health -= 1
	if health <= 0:
		queue_free()
	pass # Replace with function body.


func _on_Mover_timeout():
	moving = true
	pass # Replace with function body.
