extends Node2D

var target = preload("res://Target.tscn")

func spawn_ballons():
	g.targets = g.starting
	for i in range(g.starting):
		var target_i = target.instantiate()
		target_i.position.x = randi_range(0,1100)
		target_i.position.y = randi_range(0,600)
		add_child(target_i)
	print("spawned targets")

func _ready():
	spawn_ballons()
		
		
func _physics_process(delta):
	if g.targets == 0:
		spawn_ballons()
		


func _on_game_time_timeout():
	get_tree().change_scene_to_file("res://game_over.tscn")
