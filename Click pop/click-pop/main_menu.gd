extends Control



func _on_easy_pressed():
	g.mode = 1
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_medium_pressed():
	g.mode = 2
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_hard_pressed():
	g.mode = 3
	get_tree().change_scene_to_file("res://Main.tscn")
