extends Node

var scenes : Dictionary = {"level_0": "res://Levels/level_0.tscn",
							"level_01": "res://Levels/level_01.tscn",
							"level_02": "res://Levels/level_02.tscn",
							"level_03": "res://Levels/level_03.tscn",
							}

func trans_to_scene(level : String):
	var scene_path: String = scenes.get(level)
	
	if scene_path != null:
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file(scene_path)
