extends Node2D

var length = 100
var startPos: Vector2
var curPos: Vector2
var swiping  = false

var treeshold = 10

func _process(_delta):
	#Add "Press" on InputMap and select "MouseLeftButton" to make this work.
	if Input.is_action_just_pressed("press"):
		if !swiping:
			swiping = true
			startPos = get_global_mouse_position()
			print("Start Position", startPos)
	
	if Input.is_action_pressed("press"):
		if swiping:
			curPos = get_global_mouse_position()
			if startPos.distance_to(curPos) >= length:
				if abs(startPos.y - curPos.y) <= treeshold:
					print("Horizontal Swipe!")
					swiping = false
				elif abs(startPos.x - curPos.x) <= treeshold:
					print("Vertical Swipe!")
					swiping = false
		else:
			swiping = false
