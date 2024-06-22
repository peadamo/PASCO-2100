extends Node3D
@onready var puertas = $puertas
@onready var puertas_2 = $puertas2
@onready var puertas_3 = $puertas3
@onready var puertas_4 = $puertas4


@onready var puertas_array:Array = [
	puertas,
	puertas_2,
	puertas_3,
	puertas_4,
	]




func open_the_doors():
	for door in puertas_array:
		door.open_doors()
		
func close_the_doors():
	for door in puertas_array:
		door.close_doors()
