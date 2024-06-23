extends Node3D



func _process(delta):
	var player = get_tree().current_scene.player
	if player!=null:
		if player.is_in_group("fake") == false:
			look_at(player.camera_3d.global_position)
