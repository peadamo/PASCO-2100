extends Control

func _ready():
	visible=false


func update(ending_description,ending_number,ending_logo):
	$Panel/VBoxContainer/Label.text=ending_description
	$Panel/VBoxContainer/Label2.text=str("Ending n° ",ending_number)
	$Panel2/TextureRect.texture = ending_logo
