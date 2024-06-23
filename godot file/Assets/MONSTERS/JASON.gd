extends Node3D



func _ready():
	visible=false

func _process(delta):
	
	var player = get_tree().current_scene.player
	if player!=null:
		position.z = player.position.z
