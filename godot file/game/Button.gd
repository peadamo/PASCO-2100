extends Button
@onready var audio_stream_player_2d : AudioStreamPlayer = $"../AudioStreamPlayer2D"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	audio_stream_player_2d.playing = true
	pass # Replace with function body.
