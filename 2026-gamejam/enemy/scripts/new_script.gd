class_name stats
extends Resource

@export var max_hp : int
#@export var bullet_list
#@export var bullet_lvl
@export var ce : int
@export var ce_regen : int
@export var speed : float
@export var texture : Texture2D

func _init(a = 10,b = 10,r = 10,s=100):
	max_hp = a
	ce = b
	ce_regen = r
	speed = s
