extends Node
signal damage_taken
func take_damage(dmg:float):
	damage_taken.emit(dmg)
