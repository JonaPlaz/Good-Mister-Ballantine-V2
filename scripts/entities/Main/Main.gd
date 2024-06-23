# les tscn entities sont peut être inutiles : à vérifier
extends Node

class_name Main

var games: Array[Game] = []

func addGame(game: Game) -> void:
	games.append(game)

func getGames() -> Array[Game]:
	return games

func create() -> Main:
	var main = Main.new()
	return main
