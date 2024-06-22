extends Node3D




func _on_area_3d_area_entered(area):
	area.get_parent().visible=true
	pass # Replace with function body.


func _on_area_3d_area_exited(area):
	area.get_parent().visible=false
	
	pass # Replace with function body.
