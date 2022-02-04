tool
extends Node2D

var active = false

func init():
	active = true

func _process(delta):
	if active:
		scale*=1.01
		position.y -= 1
		modulate.a -= 0.01
		if modulate.a <= 0:
			queue_free()
