extends Node

@onready var mainMenu = $MainMenu
@onready var playMenu = $PlayMenu
@onready var brainAspiration = $BrainAspiration

func _ready():
	playMenu.hide()
	brainAspiration.hide()
	
func handleClickPlay():
	playMenu.show()
	mainMenu.hide()

func handleClickPlayReturn():
	playMenu.hide()
	mainMenu.show()
	
func handleClickNewGame():
	brainAspiration.show()
