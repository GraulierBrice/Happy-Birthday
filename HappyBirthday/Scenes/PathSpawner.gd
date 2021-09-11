extends Path2D


var children = []
export(int) var group = 0
export(int) var seperation = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	$Spawn.autostart = true
	$Spawn.start(seperation)
	for c in get_children():
		children.append(c.duplicate())
	if group > 0:
		group -= 1
	pass # Replace with function body.
#
#

#
#
func _on_Spawn_timeout():
	if group > 0:
		group -= 1
		for c in children:
			add_child(c.duplicate())
	pass # Replace with function body.
