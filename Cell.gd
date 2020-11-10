extends Area2D

var color := "#757575"
var size  := Vector2(64, 64)
var pos   := Vector2()

func _ready():
	$CollisionShape2D.position = pos + Vector2(32, 32)
	

func _draw():
	draw_rect(Rect2(pos, size), color)

