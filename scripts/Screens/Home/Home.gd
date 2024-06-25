extends Node

@onready var titleGame = $TitleGame

@onready var mainMenu = $MainMenu
@onready var playMenu = $PlayMenu

@onready var brainAspiration = $BrainAspiration
@onready var aspirationNames = $AspirationNames

@onready var artistLinkButton = $AspirationNames/Artist
@onready var entrepreneurLinkButton = $AspirationNames/Entrepreneur
@onready var executorLinkButton = $AspirationNames/Executor
@onready var lazyLinkButton = $AspirationNames/Lazy
@onready var monkLinkButton = $AspirationNames/Monk
@onready var naturalLeaderLinkButton = $AspirationNames/NaturalLeader
@onready var trickerLinkButton = $AspirationNames/Tricker
@onready var unemployedLinkButton = $AspirationNames/Unemployed
@onready var unionLeaderLinkButton = $AspirationNames/UnionLeader
@onready var vagabondLinkButton = $AspirationNames/Vagabond

@onready var returnLinkButtonFromAspiration = $AspirationNames/Return

var aspirationEntity: Aspiration = null

@onready var id = $Id
@onready var avatar = $Id/Avatar
@onready var comment = $Id/CommentAndConscience/Comment
@onready var generalConscience = $Id/CommentAndConscience/GeneralConscience
@onready var specificConscience = $Id/CommentAndConscience/SpecificConscience
@onready var aspirationName = $Id/AspirationName
@onready var aspirationSpecialAbility = $Id/AspirationSpecialAbility

@onready var entertainment = $Id/AbilitiesContainer/AgilityContainer/AgilityDictionaryNotes/Entertainment
@onready var stealthAndInfiltration = $Id/AbilitiesContainer/AgilityContainer/AgilityDictionaryNotes/StealthAndInfiltration
@onready var magicTricksAndGambling = $Id/AbilitiesContainer/AgilityContainer/AgilityDictionaryNotes/MagicTricksAndGambling

@onready var returnLinkFromId = $Id/Return

func _ready():
	playMenu.hide()
	brainAspiration.hide()
	aspirationNames.hide()
	artistLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(artistLinkButton.text))
	entrepreneurLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(entrepreneurLinkButton.text))
	executorLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(executorLinkButton.text))
	lazyLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(lazyLinkButton.text))
	monkLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(monkLinkButton.text))
	naturalLeaderLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(naturalLeaderLinkButton.text))
	trickerLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(trickerLinkButton.text))
	unemployedLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(unemployedLinkButton.text))
	unionLeaderLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(unionLeaderLinkButton.text))
	vagabondLinkButton.connect("pressed", Callable(self, "handleClickAspirationLink").bind(vagabondLinkButton.text))
	id.hide()
	
func handleClickPlay():
	playMenu.show()
	mainMenu.hide()

func handleClickPlayReturn():
	playMenu.hide()
	mainMenu.show()
	
func handleClickNewGame():
	brainAspiration.show()
	aspirationNames.show()
	
func handleClickAspirationLink(aspirationLinkText: String):
	titleGame.hide()
	var aspirationNameMatched = aspirationMatching(aspirationLinkText)
	aspirationEntity = Aspiration.new().create(aspirationNameMatched)
	brainAspiration.hide()
	aspirationNames.hide()
	playMenu.hide()
	avatar.texture = load("res://assets/images/home/avatars/" + aspirationNameMatched + ".png")
	comment.text = aspirationEntity.getComment()
	generalConscience.text = aspirationEntity.getConscience()['general']
	specificConscience.text = aspirationEntity.getConscience()['specific']
	aspirationName.text = aspirationLinkText
	aspirationSpecialAbility.text = aspirationEntity.getSpecialAbility()
	entertainment.text = str(aspirationEntity.getAgility()['entertainment'])
	stealthAndInfiltration.text = str(aspirationEntity.getAgility()['stealth_and_infiltration'])
	magicTricksAndGambling.text = str(aspirationEntity.getAgility()['magic_tricks_and_gambling'])
	id.show()
	
func aspirationMatching(aspirationLinkText: String):
	match aspirationLinkText:
		'Artiste':
			return 'artist'
		'Entrepreneur':
			return 'entrepreneur'
		'Exécutant':
			return 'executor'
		'Tire au flanc':
			return 'lazy'
		'Moine':
			return 'monk'
		'Leader naturel':
			return 'naturalLeader'
		'Combinard':
			return 'tricker'
		'Chômeur':
			return 'unemployed'
		'Syndicaliste':
			return 'unionLeader'
		'Vagabond':
			return 'vagabond'
		_:
			return null

func handleClickReturnFromAspiration():
	brainAspiration.hide()
	aspirationNames.hide()
	playMenu.show()

func handleClickReturnFromId():
	id.hide()
	titleGame.show()
	brainAspiration.show()
	aspirationNames.show()
