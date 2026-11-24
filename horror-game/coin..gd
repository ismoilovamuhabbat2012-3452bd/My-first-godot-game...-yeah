extends Area2D

@onready var gamemanager: Node = get_tree().get_first_node_in_group("gamemanager")

func _on_body_entered(body):
	print("+1 coin")
	queue_free()
