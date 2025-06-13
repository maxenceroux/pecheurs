extends Control


func _on_start_pressed() -> void:
	print("Start pressed	")
	get_tree().change_scene_to_file("res://scenes/test/test_scene_house.tscn")
