extends Node3D




func _on_area_3d_area_entered(area):
	area.get_parent().visible=true
	pass # Replace with function body.


func _on_area_3d_area_exited(area):
	area.get_parent().visible=false
	
	pass # Replace with function body.
	
	
func subway_open_doors():
	$vagones.open_the_doors()
	$vagones2.open_the_doors()
	$vagones3.open_the_doors()
	$vagones4.open_the_doors()
	$vagones5.open_the_doors()
	
func subway_close_doors():
	$vagones.close_the_doors()
	$vagones2.close_the_doors()
	$vagones3.close_the_doors()
	$vagones4.close_the_doors()
	$vagones5.close_the_doors()
