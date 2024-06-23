extends Node3D
@onready var player = $fakeplayer
@onready var gui_main = $control_main
@onready var gui_rewards = $control_rewards
var prev_player = null

# Called when the node enters the scene tree for the first time.
#func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
		Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
		$control_main.mouse_filter = Control.MOUSE_FILTER_STOP
		$control_main.visible=true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_detecta_esta_en_estacion_body_entered(body):
	
	body.reparent($".")
	pass # Replace with function body.
