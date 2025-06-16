extends Control
@onready var label = $score_text



func _ready():
	label.text = ("You popped " + str(g.score) + " targets")


func _on_restart_pressed():
	g.score = 0
	get_tree().change_scene_to_file("res://Main.tscn")
