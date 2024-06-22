extends Node3D
@export var player : CharacterBody3D


func _ready():
	visible=false

func _process(delta):
	position.z = player.position.z
	pass
