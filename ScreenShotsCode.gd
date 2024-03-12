extends Node

var ssCount = 1

func _ready():
	var dir = DirAccess.open("res://")
	dir.make_dir("screenshots")
	
	dir = DirAccess.open("res://screenshots")
	for n in dir.get_files():
		ssCount += 1

func _input(event):
	if event.is_action_pressed("screenshot"):
		screenshot()
		print("Screenshot")

func screenshot():
	await RenderingServer.frame_post_draw
	
	var viewport = get_viewport()
	var img = viewport.get_texture().get_image()
	img.save_png("res://screenshots/ss"+str(ssCount)+".png")
	ssCount += 1
