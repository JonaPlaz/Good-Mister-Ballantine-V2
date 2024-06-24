extends Node

class_name Aspiration

var agility: Dictionary = {}
var assiduity: Dictionary = {}
var eloquence: Dictionary = {}
var sixthSense: Dictionary = {}
var smartness: Dictionary = {}
var stamina: Dictionary = {}
var strength: Dictionary = {}

var comment: String = ""

var conscience: Dictionary = {
	"general": "",
	"specific": "",
}

var specialAbility: String = ""

func _init():
	agility = {
		"entertainment": 0,
		"stealth_and_infiltration": 0,
		"magic_tricks_and_gambling": 0,
	}
	assiduity = {
		"history_and_politics": 0,
		"cooking_and_botany": 0,
		"religion_and_arcane": 0,
	}
	eloquence = {
		"bargaining_and_investment": 0,
		"lie_and_persuasion": 0,
		"foreign_language": 0
	}
	sixthSense = {
		"feeling_and_action": 0,
		"stealing_and_locksmithing": 0,
		"cold_blood": 0,
	}
	smartness = {
		"logic": 0,
		"engineering_and_mathematics": 0,
		"empathy_and_psychology": 0,
	}
	stamina = {
		"patience": 0,
		"pain_resistance": 0,
		"distance_walking": 0,
	}
	strength = {
		"powerlifting": 0,
		"self_defense_and_arcadian_wrestling": 0,
		"weapons_handling": 0,
	}
	
	comment = ""
	
	conscience = {
		"specific": "",
		"general": ""
	}
	
	specialAbility = ""

func create(aspirationName: String) -> Aspiration:
	match aspirationName:
		'artist':
			return Artist.new()
		'entrepreneur':
			return Entrepreneur.new()
		'executor':
			return Executor.new()
		'lazy':
			return Lazy.new()
		'monk':
			return Monk.new()
		'naturalLeader':
			return NaturalLeader.new()
		'tricker':
			return Tricker.new()
		'unemployed':
			return Unemployed.new()
		'unionLeader':
			return UnionLeader.new()
		'vagabond':
			return Vagabond.new()
		_:
			return null

func getComment() -> String:
	return comment

func getSpecialAbility() -> String:
	return specialAbility

func getEloquence() -> Dictionary:
	return eloquence

func getAgility() -> Dictionary:
	return agility

func getAssiduity() -> Dictionary:
	return assiduity

func getSixthSense() -> Dictionary:
	return sixthSense

func getSmartness() -> Dictionary:
	return smartness

func getStamina() -> Dictionary:
	return stamina

func getStrength() -> Dictionary:
	return strength

func getConscience() -> Dictionary:
	return conscience
