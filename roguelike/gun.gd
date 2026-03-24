extends CharacterBody2D
var bullet_path = preload("res://bullets.tscn")

func _physics_process(delta):
	look_at(get_global_mouse_position())

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			fire()

func fire():
	var bullet = bullet_path.instantiate()
	bullet.pos = $Node2D.global_position
	bullet.rota = $Node2D.global_rotation
	bullet.dir = $Node2D.global_rotation
	get_tree().root.get_node("Node2D").add_child(bullet)
