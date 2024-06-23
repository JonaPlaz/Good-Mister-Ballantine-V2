extends Aspiration

class_name Lazy

func _init():
	agility = {
		"entertainment": 5,
		"stealth_and_infiltration": 7,
		"magic_tricks_and_gambling": 5,
	}
	assiduity = {
		"history_and_politics": 0,
		"cooking_and_botany": 0,
		"religion_and_arcane": 1,
	}
	eloquence = {
		"bargaining_and_investment": 3,
		"lie_and_persuasion": 5,
		"foreign_language": 3,
	}
	sixthSense = {
		"feeling_and_action": 3,
		"stealing_and_locksmithing": 2,
		"cold_blood": 2,
	}
	smartness = {
		"logic": 3,
		"engineering_and_mathematics": 2,
		"empathy_and_psychology": 3,
	}
	stamina = {
		"patience": 1,
		"pain_resistance": 1,
		"distance_walking": 0,
	}
	strength = {
		"powerlifting": 1,
		"self_defense_and_arcadian_wrestling": 2,
		"weapons_handling": 1,
	}
	
	comment = "En faire le minimum, sans que ça ne se voit trop non plus…"
	
	conscience = {
		"specific": "En faire le minimum sans que ça ne se voit trop non plus. Tu as généralement un boulot mais un pas trop fatigant. Tu es un tire au flanc et les gens le savent. Ce qui est cool, c’est que tu t’en fous...",
		"general": "Il faut quand même pas mal lire dans ce jeu… Tu es sûr que ça ira ?"
	}
	
	special_ability = ""
