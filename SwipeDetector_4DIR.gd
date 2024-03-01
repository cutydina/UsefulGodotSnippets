extends Node2D

var length = 100
var startPos: Vector2
var curPos: Vector2
var swiping  = false

var treeshold = 10

func _process(_delta):
    #Add "press" on InputMap and select "MouseLeftButton" to make this work.
    if Input.is_action_just_pressed("press"):
        if !swiping:
            swiping = true
            startPos = get_global_mouse_position()
            print("Start Position", startPos)
    
    if Input.is_action_pressed("press"):
        if swiping:
            curPos = get_global_mouse_position()
            var delta = curPos - startPos
            if delta.length() >= length:
                if abs(delta.y) > abs(delta.x):
                    if delta.y > treeshold:
                        print("Swipe Down!")
                    elif delta.y < -treeshold:
                        print("Swipe Up!")
                else:
                    if delta.x > treeshold:
                        print("Swipe Right!")
                    elif delta.x < -treeshold:
                        print("Swipe Left!")
                swiping = false
        else:
            swiping = false
