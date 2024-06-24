extends Aspiration

class_name NaturalLeader

func _init():
	agility = {
		"entertainment": 2,
		"stealth_and_infiltration": 3,
		"magic_tricks_and_gambling": 3,
	}
	assiduity = {
		"history_and_politics": 3,
		"cooking_and_botany": 2,
		"religion_and_arcane": 2,
	}
	eloquence = {
		"bargaining_and_investment": 5,
		"lie_and_persuasion": 7,
		"foreign_language": 5,
	}
	sixthSense = {
		"feeling_and_action": 1,
		"stealing_and_locksmithing": 1,
		"cold_blood": 2,
	}
	smartness = {
		"logic": 3,
		"engineering_and_mathematics": 3,
		"empathy_and_psychology": 5,
	}
	stamina = {
		"patience": 1,
		"pain_resistance": 1,
		"distance_walking": 0,
	}
	strength = {
		"powerlifting": 0,
		"self_defense_and_arcadian_wrestling": 0,
		"weapons_handling": 1,
	}
	
	comment = "On ne voit que toi et ça ne te demande aucun effort."
	
	conscience = {
		"specific": "On ne voit que toi et ça ne te demande aucun effort. Tu prends les décisions et c’est ce qu’on attend de toi.",
		"general": "Bah dis donc, on a une haute opinion de soi à ce que je vois...",
	}
	
	specialAbility = "Parti politique"
