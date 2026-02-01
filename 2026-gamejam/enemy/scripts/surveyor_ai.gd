extends Node2D
@export var shoot_offset = 2
@export var bullet_base: PackedScene
var player
var type = 0
#@onready var player: CharacterBody2D = $"../Player"
var is_cooldown = false
var cooldown =0
var burst = 50
var velocity = Vector2()

	
func _process(delta: float) -> void:
	if type != 0:
		return
	
	
	player = find_parent("Level").find_parent("game").get_node("Player")
	cooldown -= delta
	
	if cooldown < 0 && cooldown > -10:
		velocity = player.global_position - global_position
		shoot(velocity.normalized())
	elif cooldown < -10:
		cooldown = 5
	
func shoot(direction):
	var bullet = bullet_base.instantiate()
	bullet.global_position = global_position + direction * shoot_offset
	bullet.direction = direction
	bullet.damage = get_parent().stats.bullet_dmg
	get_tree().root.add_child(bullet)
