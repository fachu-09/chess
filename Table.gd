extends Node2D

const tile_size = 64
const COLUMNS = 8
const ROWS = 8

func _ready():
	
	var Cell = preload("res://Cell.tscn")
	for x in range(COLUMNS):
		for y in range(ROWS):
			var cell = Cell.instance()
			if y % 2 == 0 && x % 2 != 0:
				cell.color = "#757575"
			elif y % 2 != 0 && x % 2 != 0:
				cell.color = "#E5E5E5"
			elif y % 2 == 0:
				cell.color = "#E5E5E5"
			else:
				cell.color = "#757575"
			cell.pos = Vector2(x * tile_size, y * tile_size)
			cell.connect("area_entered", self, "_on_Cell_area_entered")
			add_child(cell)
			
func _on_Cell_area_entered(body):
	print("entered\t", body.tile_size)
