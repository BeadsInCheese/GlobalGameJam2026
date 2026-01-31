extends RigidBody2D

@export var stats : Resource
var player

func _ready() -> void:
	player = find_parent("game").get_node("Player")
	$HPSystem.current_hp = stats.max_hp
	$Sprite2D.texture = stats.texture

func _process(delta):
	var velocity = Vector2()
	
	velocity.x += player.position.x - position.x
	velocity.y += player.position.y - position.y
	move_and_collide(stats.speed * velocity.normalized())

func take_damage(f: float):
	get_node("HPSystem").take_damage(f)

func _on_enemy_death() -> void:
	self.queue_free()
