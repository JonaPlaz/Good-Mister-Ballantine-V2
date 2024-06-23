extends Node

class_name Player

var aspiration: Aspiration
var inventory: Inventory

func create(aspirationName: String) -> Player:
	var player = Player.new()
	player.aspiration = aspiration.create(aspirationName)
	#player.inventory = inventory
	return player
