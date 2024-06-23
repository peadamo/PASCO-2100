extends Node3D


func _process(delta):
	var player = get_tree().current_scene.player
	if player!=null:
		look_at(Vector3(player.global_position.x,$".".global_position.y,player.global_position.z))
