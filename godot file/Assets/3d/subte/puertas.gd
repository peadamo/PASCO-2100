extends Node3D
@onready var animation_player = $AnimationPlayer


func open_doors():
	animation_player.play("open_doors")


func close_doors():
	animation_player.play_backwards("open_doors")
	
