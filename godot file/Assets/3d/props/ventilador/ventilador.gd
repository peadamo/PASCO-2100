extends Node3D
@export var player : CharacterBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("on")
	pass # Replace with function body.




func _on_area_3d_body_entered(body):
	print("kill player")
	get_parent().carteles_ventiladores.visible=true
	queue_free()
	player.death_by_ventilator()
