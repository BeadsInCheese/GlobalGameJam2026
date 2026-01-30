extends RigidBody2D
var direction:Vector2
var speed=40
@export var modifiers:BulletModifier
func _ready() -> void:
	pass
	
	
func _process(delta: float) -> void:
	linear_velocity=direction*speed
	move_and_collide(linear_velocity)


func _on_kill_timer_timeout() -> void:
	queue_free()
