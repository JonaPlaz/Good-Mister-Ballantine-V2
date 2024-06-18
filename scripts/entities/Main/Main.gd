extends Node

class_name Main

var games: Array[Game] = []

func addAndGetGames(game: Game) -> Array[Game]:
   games.append(game)
   return games
