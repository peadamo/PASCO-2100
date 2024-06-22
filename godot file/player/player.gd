extends Node
@onready var head = $head
@onready var head_camera = $head/head_camera
@onready var player = $"."
var gravity = 10.0
var speed = 5
var jump_velocity = 5
var mouse_sensitivity=0.002

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x*mouse_sensitivity)
		head_camera.rotate_x(-event.relative.y*mouse_sensitivity)
		head_camera.rotation.x=clamp(head_camera.rotation.x,deg_to_rad(-89.9),1)
	

func _physics_process(delta):
	$Control/fps.text = str(Performance.get_monitor(Performance.TIME_FPS))
	
	
	
	
	
	if !player.is_on_floor():
		player.velocity.y-=player.gravity*delta
	if Input.is_action_pressed("jump") and player.is_on_floor():
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
