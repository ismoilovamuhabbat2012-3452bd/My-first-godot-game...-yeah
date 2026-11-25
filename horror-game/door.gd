extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		var coins_left = get_tree().get_nodes_in_group("coins").size()
		
		if coins_left == 0:
			get_tree().call_deferred("change_scene_to_file", "res://win_screen.tscn")
		else:
			print("Door locked! Coins left: ", coins_left)
