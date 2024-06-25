extends Node
@export var world :Node3D
@onready var head = $head
@onready var head_camera = $head/head_camera
@onready var player = $"."
@onready var camera_3d = $head/head_camera/Camera3D
var prev_player = null

var can_move = true
var gravity = 10.0
var speed = 5
var jump_velocity = 5
var mouse_sensitivity=0.002

var gui_rewards:Control
var gui_main:Control
		
func _ready():
	print(get_tree().current_scene.gui_rewards)
	gui_rewards=get_tree().current_scene.gui_rewards
	gui_main=get_tree().current_scene.gui_main
	
	
	$"head/head_camera/Camera3D/pies reja".visible=false
	$ventilador.visible=false
	

func reset_pos():

	player.global_position = Vector3(8.071,1.013,6.156)
	player.rotation = Vector3.ZERO
	head.position = Vector3(0,2.085,0)
	head.rotation = Vector3(0,deg_to_rad(0),0)
	head_camera.position = Vector3.ZERO
	head_camera.rotation = Vector3.ZERO
	camera_3d.position = Vector3.ZERO
	camera_3d.rotation = Vector3.ZERO
	
	#head.global_rotation = Vector3.ZERO
	#head_camera.global_rotation = Vector3.ZERO
	#camera_3d.global_rotation = Vector3.ZERO
	




func _unhandled_input(event):
	if event is InputEventMouseMotion and can_move:
		head.rotate_y(-event.relative.x*mouse_sensitivity)
		head_camera.rotate_x(-event.relative.y*mouse_sensitivity)
		head_camera.rotation.x=clamp(head_camera.rotation.x,deg_to_rad(-89.9),1)
	
const SALTO = preload("res://Assets/sounds/salto.mp3")
@onready var audio_stream_player = $AudioStreamPlayer

func _physics_process(delta):
	player.velocity.x = 0.0
	player.velocity.z = 0.0
	$Control/fps.text = str(Performance.get_monitor(Performance.TIME_FPS))
	$Control/fps2.text = str(Performance.get_monitor(Performance.RENDER_TOTAL_PRIMITIVES_IN_FRAME))
	
	

	
	if !player.is_on_floor():

		player.velocity.y-=player.gravity*delta
	if can_move:
		
		if Input.is_action_pressed("jump") and player.is_on_floor():
			audio_stream_player.stream = SALTO
			audio_stream_player.playing = true
			player.velocity.y=player.jump_velocity
			
		var input_dir=Input.get_vector("move_left","move_rigth","move_foward","move_backward")	
		var direction = (head.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
		if direction:
			player.velocity.x = direction.x * player.speed
			player.velocity.z = direction.z * player.speed
			
		else:
			player.velocity.x = 0.0
			player.velocity.z = 0.0
		
	player.move_and_slide()
		
		

		
		
@onready var animation_player: AnimationPlayer = $AnimationPlayer
		
		
		
		
		
const VENTILADOR = preload("res://gui/ventilador.png")
const FENCE = preload("res://gui/fence.png")
var ending_description = ""
var ending_number = 0
var ending_logo

func death_by_ventilator():
	can_move=false
	animation_player.play("death_by_ventilator")
	ENDINGS.ending_05 = true
	ending_description="death by fan"
	ending_number="5"
	ending_logo=VENTILADOR
	gui_main.button_start.text = "REPLAY"
	gui_main.reward_5.visible=true
	
func muerte_por_reja():
	can_move=false
	animation_player.play("muerte_por_reja")
	ENDINGS.ending_03 = true
	ending_description="pierced to death"
	ending_number="3"
	ending_logo=FENCE
	gui_main.button_start.text = "REPLAY"
	gui_main.reward_3.visible=true
	
	
	
	
	
	
const TRAIN = preload("res://gui/train.png")	
func death_by_train():
	can_move=false
	animation_player.play("hit_by_a_train")
	ENDINGS.ending_09 = true
	ending_description="hit by a train"
	ending_number="9"
	ending_logo=TRAIN
	gui_main.button_start.text = "REPLAY"
	gui_main.reward_9.visible=true
const HUMAN = preload("res://gui/human.png")	
func death_by_cabezas_feas():
	can_move=false
	animation_player.play("cabezas_comen")
	ENDINGS.ending_01 = true
	ending_description="EAT Tunnel Lurkers"
	ending_number="1"
	ending_logo=HUMAN
	gui_main.button_start.text = "REPLAY"
	gui_main.reward_1.visible=true
	
const FRAME = preload("res://gui/frame.png")	
func death_by_la_nena_negra():
	can_move=false
	animation_player.play("cabezas_comen")
	ENDINGS.ending_11 = true
	ending_description="the painting"
	ending_number="11"
	ending_logo=FRAME
	gui_main.button_start.text = "REPLAY"
	gui_main.reward_11.visible=true
	
	
func lunch_death_GUI():
	gui_rewards.update(ending_description,ending_number,ending_logo)
	gui_rewards.visible = true
	
func go_to_main():
	gui_rewards.visible = false
	gui_main.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
	
