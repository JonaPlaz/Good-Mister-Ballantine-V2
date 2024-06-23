extends Node

@onready var mainMenu = $MainMenu
@onready var playMenu = $PlayMenu

func _ready():
	playMenu.hide()
	
func handleClickPlay():
	playMenu.show()
	mainMenu.hide()

func handleClickPlayReturn():
	playMenu.hide()
	mainMenu.show()
