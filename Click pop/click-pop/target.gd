extends Area2D



var mouse_click = false
var enter = false

func _ready():
	if g.mode == 1:
		self.scale.x = 1
		self.scale.y = 1
	elif g.mode == 2:
		self.scale.x = .5
		self.scale.y = .5
	else:
		self.scale.x = .25
		self.scale.y = .25

func _process(delta):
	if mouse_click and enter:
		g.score += 1
		self.queue_free()
		g.targets -= 1
	mouse_click = false

	
	
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			mouse_click = true

func _on_mouse_entered():
	enter = true
	
	

func _on_mouse_exited():
	enter = false 
