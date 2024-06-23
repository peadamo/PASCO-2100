extends Area3D


@export var player:CharacterBody3D
@export var game:Node3D






@onready var animation_player:AnimationPlayer = $AnimationPlayer

func _on_body_entered(body):
	animation_player.play("death_cabezas_feas")
	pass # Replace with function body.



func death_by_cabezas_feas():
	var player = get_tree().current_scene.player
	if player!=null:
		player.death_by_cabezas_feas()

func lunch_death_GUI():
	var player = get_tree().current_scene.player
	if player!=null:
		player.death_by_cabezas_feas()

func go_to_main():
	var player = get_tree().current_scene.player
	if player!=null:
		player.death_by_cabezas_feas()
	
func reparent_player():
	pass
	
	
