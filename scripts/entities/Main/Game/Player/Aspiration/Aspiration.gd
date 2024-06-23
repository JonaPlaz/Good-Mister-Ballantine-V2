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

var special_ability: String = ""

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
	
	special_ability = ""
	
func get_comment() -> String:
	return comment

func get_special_ability() -> String:
	return special_ability

func get_eloquence() -> Dictionary:
	return eloquence

func get_agility() -> Dictionary:
	return agility

func get_assiduity() -> Dictionary:
	return assiduity

func get_sixth_sense() -> Dictionary:
	return sixthSense

func get_smartness() -> Dictionary:
	return smartness

func get_stamina() -> Dictionary:
	return stamina

func get_strength() -> Dictionary:
	return strength

func get_conscience() -> Dictionary:
	return conscience
