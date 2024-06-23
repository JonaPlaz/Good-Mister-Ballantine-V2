extends Node

class_name Player

var aspiration: Aspiration
var inventory: Inventory

static func create(aspiration: Aspiration, inventory: Inventory) -> Player:
	var player = Player.new()
	player.aspiration = aspiration
	player.inventory = inventory
	return player
