extends Node2D

func _on_new_piskel_5_png_pressed() -> void:
	get_tree().change_scene_to_file("res://scene.tscn")

func _on_new_piskel_5_png_2_pressed() -> void:
	get_tree().quit()
