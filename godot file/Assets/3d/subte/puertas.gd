extends Node3D
@onready var animation_player = $AnimationPlayer


func open_doors():
	animation_player.play("open_doors")
