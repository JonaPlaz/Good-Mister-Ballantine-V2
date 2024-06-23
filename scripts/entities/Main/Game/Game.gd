extends Node

class_name Game

var uuid = Uuid.new()

var internalId: String
var player: Player
var stages: Array[Stage]

func create(player: Player) -> Game:
	var game = Game.new()
	game.internalId = uuid.generateId()
	game.player = player
	game.stages = []
	return game
