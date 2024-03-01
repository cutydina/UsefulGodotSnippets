extends Node2D

var direction = Vector2(5,0)

func _process(_delta):
#Add movement on ImputMap with this names or change to the one you are gonna use. Script must be on Main and Player as a Child.
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
	#If main node is "Player" will be just: position +=direction/2
	var player_pos = get_node("Player").position
	get_node("Player").position +=direction/2
