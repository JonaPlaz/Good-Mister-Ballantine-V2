extends Aspiration

class_name Executor

func _init():
	agility = {
		"entertainment": 2,
		"stealth_and_infiltration": 2,
		"magic_tricks_and_gambling": 3,
	}
	assiduity = {
		"history_and_politics": 0,
		"cooking_and_botany": 1,
		"religion_and_arcane": 1,
	}
	eloquence = {
		"bargaining_and_investment": 1,
		"lie_and_persuasion": 0,
		"foreign_language": 0,
	}
	sixthSense = {
		"feeling_and_action": 3,
		"stealing_and_locksmithing": 2,
		"cold_blood": 3,
	}
	smartness = {
		"logic": 1,
		"engineering_and_mathematics": 2,
		"empathy_and_psychology": 1,
	}
	stamina = {
		"patience": 7,
		"pain_resistance": 5,
		"distance_walking": 5,
	}
	strength = {
		"powerlifting": 5,
		"self_defense_and_arcadian_wrestling": 3,
		"weapons_handling": 3,
	}
	
	comment = "Tu sais faire plein de choses et on te sollicite pour ça."
	
	conscience = {
		"specific": "Tu sais faire plein de chose et on te sollicite pour ça. Utile pour se faire une situation rapidement mais avec un plafond de reconnaissance assez bas. Du moins si tu te cantonnes à tout ce qui est légale.",
		"general": "C’est bien ce que je pensais."
	}
	
	special_ability = ""
