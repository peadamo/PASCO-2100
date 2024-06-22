extends PathFollow3D
@onready var path_follow_3d : PathFollow3D = $"."
@export var walk_speed = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow_3d.progress+= walk_speed*delta
	pass
