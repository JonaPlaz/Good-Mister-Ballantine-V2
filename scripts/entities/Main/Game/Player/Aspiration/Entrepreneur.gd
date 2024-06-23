extends Aspiration

class_name Entrepreneur

func _init():
	agility = {
		"entertainment": 0,
		"stealth_and_infiltration": 0,
		"magic_tricks_and_gambling": 1,
	}
	assiduity = {
		"history_and_politics": 5,
		"cooking_and_botany": 3,
		"religion_and_arcane": 3,
	}
	eloquence = {
		"bargaining_and_investment": 3,
		"lie_and_persuasion": 2,
		"foreign_language": 2,
	}
	sixthSense = {
		"feeling_and_action": 1,
		"stealing_and_locksmithing": 0,
		"cold_blood": 1,
	}
	smartness = {
		"logic": 7,
		"engineering_and_mathematics": 5,
		"empathy_and_psychology": 5,
	}
	stamina = {
		"patience": 3,
		"pain_resistance": 3,
		"distance_walking": 2,
	}
	strength = {
		"powerlifting": 1,
		"self_defense_and_arcadian_wrestling": 2,
		"weapons_handling": 1,
	}
	
	comment = "Tu fais partie des piliers de la société."
	
	conscience = {
		"specific": "Tu fais partie des piliers de la société. Tu as des idées, tu les mets en œuvre et les gens t’admire pour cela.",
		"general": "C’est le mal du siècle si tu veux mon avis… Tout le monde veut entreprendre. Dans le dessein d’en faire le moins possible, paradoxalement..."
	}
	
	special_ability = "Levée de fonds"
