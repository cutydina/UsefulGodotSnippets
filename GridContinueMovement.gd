extends Node2D

var direction = Vector2(5,0)

func _process(_delta):
	if(Input.is_action_just_pressed("move_up")):
		direction = Vector2(0,-5)
	elif(Input.is_action_just_pressed("move_down")):
		direction = Vector2(0,5)
	elif(Input.is_action_just_pressed("move_left")):
		direction = Vector2(-5,0)
	elif(Input.is_action_just_pressed("move_right")):
		direction = Vector2(5,0)
		
	move_player()
		
		
func move_player():
	var player_pos = get_node("Player").position
	get_node("Player").position +=direction/2
