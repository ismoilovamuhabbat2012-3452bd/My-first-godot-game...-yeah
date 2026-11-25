extends TextureButton

func _ready() -> void:
	# Automatically center the pivot based on the button's size
	pivot_offset = size / 2.0
	
	# Connect hover and press signals automatically
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_unhover)
	button_down.connect(_on_press)
	button_up.connect(_on_unhover)

func _on_hover() -> void:
	animate_scale(Vector2(1.08, 1.08)) # Grows slightly on hover

func _on_unhover() -> void:
	animate_scale(Vector2(1.0, 1.0))   # Returns to normal size

func _on_press() -> void:
	animate_scale(Vector2(0.9, 0.9))   # Squishes down when clicked

func animate_scale(target_scale: Vector2) -> void:
	var tween = create_tween()
	tween.tween_property(self, "scale", target_scale, 0.08).set_trans(Tween.TRANS_SINE)
