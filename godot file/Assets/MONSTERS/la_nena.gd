extends Node3D
@export var player : CharacterBody3D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var player = get_tree().current_scene.player
	if player!=null:
		look_at(Vector3(player.global_position.x,global_position.y,player.global_position.z))
