extends Node

const BotStats = preload("res://enemy/scripts/new_script.gd")

var data = {
	"SurveyorBot": BotStats.new(10,13,1,100), # Creates instance with 10 health.
	"RevenantBot": BotStats.new(20,15,1,70) # A different one with 20 health.
}

func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	pass
