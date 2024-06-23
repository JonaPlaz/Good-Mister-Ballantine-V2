extends Node

class_name Main

var games: Array[Game] = []

func addGame(game: Game) -> void:
	games.append(game)

func getGames() -> Array[Game]:
	return games

func create(aspirationName: String) -> Main:
	var main = Main.new()
	var game = Game.new()
	game.create(aspirationName)
	main.addGame(game)
	return main
