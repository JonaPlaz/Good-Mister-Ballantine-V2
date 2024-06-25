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
@onready var historyAndPolitics = $Id/AbilitiesContainer/AssiduityContainer/AssiduityDictionaryNotes/HistoryAndPolitics
@onready var cookingAndBotany = $Id/AbilitiesContainer/AssiduityContainer/AssiduityDictionaryNotes/CookingAndBotany
@onready var religionAndArcane = $Id/AbilitiesContainer/AssiduityContainer/AssiduityDictionaryNotes/ReligionAndArcane
@onready var bargainingAndInvestment = $Id/AbilitiesContainer/EloquenceContainer/EloquenceDictionaryNotes/BargainingAndInvestment
@onready var lieAndPersuasion = $Id/AbilitiesContainer/EloquenceContainer/EloquenceDictionaryNotes/LieAndPersuasion
@onready var foreignLanguage = $Id/AbilitiesContainer/EloquenceContainer/EloquenceDictionaryNotes/ForeignLanguage
@onready var feelingAndAction = $Id/AbilitiesContainer/SixthSenseContainer/SixthSenseDictionaryNotes/FeelingAndAction
@onready var stealingAndLocksmithing = $Id/AbilitiesContainer/SixthSenseContainer/SixthSenseDictionaryNotes/StealingAndLocksmithing
@onready var coldBlood = $Id/AbilitiesContainer/SixthSenseContainer/SixthSenseDictionaryNotes/ColdBlood
@onready var logic = $Id/AbilitiesContainer/SmartnessContainer/SmartnessDictionaryNotes/Logic
@onready var engineeringAndMathematics = $Id/AbilitiesContainer/SmartnessContainer/SmartnessDictionaryNotes/EngineeringAndMathematics
@onready var empathyAndPsychology = $Id/AbilitiesContainer/SmartnessContainer/SmartnessDictionaryNotes/EmpathyAndPsychology
@onready var patience = $Id/AbilitiesContainer/StaminaContainer/StaminaDictionaryNotes/Patience
@onready var painResistance = $Id/AbilitiesContainer/StaminaContainer/StaminaDictionaryNotes/PainResistance
@onready var distanceWalking = $Id/AbilitiesContainer/StaminaContainer/StaminaDictionaryNotes/DistanceWalking
@onready var powerLifting = $Id/AbilitiesContainer/StrengthContainer/StrengthDictionaryNotes/PowerLifting
@onready var selfDefenseAndArcadianWrestling = $Id/AbilitiesContainer/StrengthContainer/StrengthDictionaryNotes/SelfDefenseAndArcadianWrestling
@onready var weaponsHandling = $Id/AbilitiesContainer/StrengthContainer/StrengthDictionaryNotes/WeaponsHandling

@onready var returnLinkFromId = $Id/Return

func _ready():
	hideElementsBeforeLoadHome()
	dynamizeAspirationLinkButton()
	
func hideElementsBeforeLoadHome():
	playMenu.hide()
	brainAspiration.hide()
	aspirationNames.hide()
	id.hide()

func dynamizeAspirationLinkButton():
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
	hideElementsBeforeShowId()
	var aspirationNameMatched = aspirationMatching(aspirationLinkText)
	loadAvatar(aspirationNameMatched)
	createAspirationAndcompleteProperties(aspirationNameMatched, aspirationLinkText)
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
			
func createAspirationAndcompleteProperties(aspirationNameMatched: String, aspirationLinkText: String):
	aspirationEntity = Aspiration.new().create(aspirationNameMatched)
	comment.text = aspirationEntity.getComment()
	generalConscience.text = aspirationEntity.getConscience()['general']
	specificConscience.text = aspirationEntity.getConscience()['specific']
	aspirationName.text = aspirationLinkText
	aspirationSpecialAbility.text = aspirationEntity.getSpecialAbility()
	entertainment.text = str(aspirationEntity.getAgility()['entertainment'])
	stealthAndInfiltration.text = str(aspirationEntity.getAgility()['stealth_and_infiltration'])
	magicTricksAndGambling.text = str(aspirationEntity.getAgility()['magic_tricks_and_gambling'])
	historyAndPolitics.text = str(aspirationEntity.getAssiduity()['history_and_politics'])
	cookingAndBotany.text = str(aspirationEntity.getAssiduity()['cooking_and_botany'])
	religionAndArcane.text = str(aspirationEntity.getAssiduity()['religion_and_arcane'])
	bargainingAndInvestment.text = str(aspirationEntity.getEloquence()['bargaining_and_investment'])
	lieAndPersuasion.text = str(aspirationEntity.getEloquence()['lie_and_persuasion'])
	foreignLanguage.text = str(aspirationEntity.getEloquence()['foreign_language'])
	feelingAndAction.text = str(aspirationEntity.getSixthSense()['feeling_and_action'])
	stealingAndLocksmithing.text = str(aspirationEntity.getSixthSense()['stealing_and_locksmithing'])
	coldBlood.text = str(aspirationEntity.getSixthSense()['cold_blood'])
	logic.text = str(aspirationEntity.getSmartness()['logic'])
	engineeringAndMathematics.text = str(aspirationEntity.getSmartness()['engineering_and_mathematics'])
	empathyAndPsychology.text = str(aspirationEntity.getSmartness()['empathy_and_psychology'])
	patience.text = str(aspirationEntity.getStamina()['patience'])
	painResistance.text = str(aspirationEntity.getStamina()['pain_resistance'])
	distanceWalking.text = str(aspirationEntity.getStamina()['distance_walking'])
	powerLifting.text = str(aspirationEntity.getStrength()['powerlifting'])
	selfDefenseAndArcadianWrestling.text = str(aspirationEntity.getStrength()['self_defense_and_arcadian_wrestling'])
	weaponsHandling.text = str(aspirationEntity.getStrength()['weapons_handling'])
	
func hideElementsBeforeShowId():
	titleGame.hide()
	brainAspiration.hide()
	aspirationNames.hide()
	playMenu.hide()

func loadAvatar(aspirationNameMatched: String):
	avatar.texture = load("res://assets/images/home/avatars/" + aspirationNameMatched + ".png")

func handleClickReturnFromAspiration():
	brainAspiration.hide()
	aspirationNames.hide()
	playMenu.show()

func handleClickReturnFromId():
	id.hide()
	titleGame.show()
	brainAspiration.show()
	aspirationNames.show()
