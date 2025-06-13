extends Control

func _on_ludo_pressed() -> void:
	print("Start ludo")
	get_tree().change_scene_to_file("res://scenes/test/test_scene_house.tscn")




func _on_laura_pressed() -> void:
	print("Start laura")
	var house_scene = load("res://scenes/test/test_scene_house.tscn").instantiate()
	var player_2_scene = load("res://scenes/characters/player/player_2.tscn").instantiate()

	# Find and replace the Player node
	var old_player = house_scene.get_node_or_null("GameTileMap/Player")
	if old_player:
		print("hes")
		var parent = old_player.get_parent()
		var position = old_player.global_position
		var scale = old_player.scale  # ✅ capture the scale
		old_player.queue_free()

		player_2_scene.global_position = position
		player_2_scene.scale = Vector2(0.03, 0.03)  # ✅ set scale manually


		player_2_scene.name = "Player"
		parent.add_child(player_2_scene)

	get_tree().root.add_child(house_scene)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = house_scene
