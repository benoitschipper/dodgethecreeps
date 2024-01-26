extends RigidBody2D

@export var min_speed = 150.0
@export var max_speed = 250.0
@export var mob_scene: PackedScene

func _ready():
	$AnimatedSprite.is_playing
	var mob_types = $AnimatedSprite.sprite_frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
