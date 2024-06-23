extends Control

@onready var button_start = $VBoxContainer/button_start

@onready var audio_stream_player_2d = $VBoxContainer/AudioStreamPlayer2D

func _ready():
	visible=true



func _on_button_start_mouse_entered():
	audio_stream_player_2d.playing=true
	
	pass # Replace with function body.


func _on_button_2_mouse_entered():
	audio_stream_player_2d.playing=true
	
	pass # Replace with function body.


func _on_button_credits_mouse_entered():
	audio_stream_player_2d.playing=true
	
	pass # Replace with function body.


func _on_button_exit_mouse_entered():
	audio_stream_player_2d.playing=true
	
	pass # Replace with function body.


func _on_button_start_pressed():
	$"../Player".can_move=true
	$"../Player".reset_pos()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	$".".visible=false
	pass # Replace with function body.
	
	
	
# rewarfs

@onready var reward_1 = $awards/Panel/MarginContainer/reward_1
@onready var reward_2 = $awards/Panel2/MarginContainer/reward_2
@onready var reward_3 = $awards/Panel4/MarginContainer/reward_3
@onready var reward_4 = $awards/Panel6/MarginContainer/reward_4
@onready var reward_5 = $awards/Panel5/MarginContainer/reward_5
@onready var reward_6 = $awards/Panel3/MarginContainer/reward_6
@onready var reward_7 = $awards/Panel7/MarginContainer/reward_7
@onready var reward_8 = $awards/Panel8/MarginContainer/reward_8
@onready var reward_9 = $awards/Panel9/MarginContainer/reward_9
@onready var reward_10 = $awards/Panel10/MarginContainer/reward_10
@onready var reward_11 = $awards/Panel11/MarginContainer/reward_11
@onready var reward_12 = $awards/Panel12/MarginContainer/reward_12



