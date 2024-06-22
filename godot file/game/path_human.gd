extends PathFollow3D

@onready var path_follow_3d : PathFollow3D = $"."
@export var walk_speed = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow_3d.progress+= walk_speed*delta
	pass
