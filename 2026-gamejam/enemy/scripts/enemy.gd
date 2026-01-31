extends RigidBody2D

@export var stats : Resource
var player

func _ready() -> void:
	player = find_parent("game").get_node("Player")

func _physics_process(delta: float) -> void:
	$NavigationAgent2D.target_position = player.position
	var next_path = $NavigationAgent2D.get_next_path_position()
	var motion = next_path - position
	move_and_collide(motion.normalized())

func take_damage(f: float):
	get_node("HPSystem").take_damage(f)

func _on_enemy_death() -> void:
	self.queue_free()
