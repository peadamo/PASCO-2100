extends Node3D

var mesh:Mesh
var surface:StandardMaterial3D
func _ready():
	mesh=$huecos_pared_029.mesh
	surface = mesh.surface_get_material(0)
	
	
	
	
	
var counter = 0
var timer_on = true
	
func _on_timer_timeout():
	if timer_on:
		surface.albedo_texture=load(sprites[counter])
		counter+=1
		if counter>69:
			counter=0
			surface.albedo_texture=load(sprites[counter])
			
			timer_on=false
			$"../la nena/AnimationPlayer".play("fantasma_saliendo")
			$"../la nena/la nena fondo".play("sale_la_nena")



@onready var sprites:Array = ["res://Assets/la nena negra/0001.png",
"res://Assets/la nena negra/0002.png",
"res://Assets/la nena negra/0003.png",
"res://Assets/la nena negra/0004.png",
"res://Assets/la nena negra/0005.png",
"res://Assets/la nena negra/0006.png",
"res://Assets/la nena negra/0007.png",
"res://Assets/la nena negra/0008.png",
"res://Assets/la nena negra/0009.png",
"res://Assets/la nena negra/0010.png",
"res://Assets/la nena negra/0011.png",
"res://Assets/la nena negra/0012.png",
"res://Assets/la nena negra/0013.png",
"res://Assets/la nena negra/0014.png",
"res://Assets/la nena negra/0015.png",
"res://Assets/la nena negra/0016.png",
"res://Assets/la nena negra/0017.png",
"res://Assets/la nena negra/0018.png",
"res://Assets/la nena negra/0019.png",
"res://Assets/la nena negra/0020.png",
"res://Assets/la nena negra/0021.png",
"res://Assets/la nena negra/0022.png",
"res://Assets/la nena negra/0023.png",
"res://Assets/la nena negra/0024.png",
"res://Assets/la nena negra/0025.png",
"res://Assets/la nena negra/0026.png",
"res://Assets/la nena negra/0027.png",
"res://Assets/la nena negra/0028.png",
"res://Assets/la nena negra/0029.png",
"res://Assets/la nena negra/0030.png",
"res://Assets/la nena negra/0031.png",
"res://Assets/la nena negra/0032.png",
"res://Assets/la nena negra/0033.png",
"res://Assets/la nena negra/0034.png",
"res://Assets/la nena negra/0035.png",
"res://Assets/la nena negra/0036.png",
"res://Assets/la nena negra/0037.png",
"res://Assets/la nena negra/0038.png",
"res://Assets/la nena negra/0039.png",
"res://Assets/la nena negra/0040.png",
"res://Assets/la nena negra/0041.png",
"res://Assets/la nena negra/0042.png",
"res://Assets/la nena negra/0043.png",
"res://Assets/la nena negra/0044.png",
"res://Assets/la nena negra/0045.png",
"res://Assets/la nena negra/0046.png",
"res://Assets/la nena negra/0047.png",
"res://Assets/la nena negra/0048.png",
"res://Assets/la nena negra/0049.png",
"res://Assets/la nena negra/0050.png",
"res://Assets/la nena negra/0051.png",
"res://Assets/la nena negra/0052.png",
"res://Assets/la nena negra/0053.png",
"res://Assets/la nena negra/0054.png",
"res://Assets/la nena negra/0055.png",
"res://Assets/la nena negra/0056.png",
"res://Assets/la nena negra/0057.png",
"res://Assets/la nena negra/0058.png",
"res://Assets/la nena negra/0059.png",
"res://Assets/la nena negra/0060.png",
"res://Assets/la nena negra/0061.png",
"res://Assets/la nena negra/0062.png",
"res://Assets/la nena negra/0063.png",
"res://Assets/la nena negra/0064.png",
"res://Assets/la nena negra/0065.png",
"res://Assets/la nena negra/0066.png",
"res://Assets/la nena negra/0067.png",
"res://Assets/la nena negra/0068.png",
"res://Assets/la nena negra/0069.png",
"res://Assets/la nena negra/0070.png"]
