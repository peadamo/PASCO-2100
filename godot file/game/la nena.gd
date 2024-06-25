extends CharacterBody3D

var pursuit=false
func finish_anim():
	print("dsadad")
	pursuit=true

func _process(delta):
	if pursuit:
		var player = get_tree().current_scene.player
		if player!=null:
			look_at(player.global_position)
			rotate_y(deg_to_rad(180))
			
			var direction = global_position.direction_to(player.global_position)
			velocity=direction*delta*130
			
			var distance = global_position.distance_squared_to(player.global_position)
			if distance < 1:
				player.death_by_la_nena_negra()
				$"..".queue_free()
				$"../../escenario/estacion_pasco/huecos_pared_029".queue_free()
			move_and_slide()
