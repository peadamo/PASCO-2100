extends Node3D
@onready var huecos_pared_022 = $"../escenario/estacion_pasco/huecos_pared_022"
var mesh : Mesh
const ESTACION_PASCO_PINTURA_2_LA_NENITA = preload("res://Assets/3d/estacion/estacion_pasco_pintura2_la_nenita.jpg")


var look_at_it = false
func _on_area_3d_body_entered(body):
	look_at_it=true
	pass # Replace with function body.

@onready var timer = $Timer

func _on_area_3d_2_body_exited(body):
	
	if look_at_it:
		mesh = huecos_pared_022.mesh
		var surface :StandardMaterial3D = mesh.surface_get_material(0)
		surface.albedo_texture = ESTACION_PASCO_PINTURA_2_LA_NENITA
		timer.start()
		

@onready var animation_player = $AnimationPlayer

func _on_timer_timeout():
	animation_player.play("la_nenita")
	var random = randf_range(10.0,11.0)+10.0
	timer.start(random)
