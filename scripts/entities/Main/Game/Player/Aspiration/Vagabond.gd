extends Aspiration

class_name Vagabond

func _init():
	agility = {
		"entertainment": 1,
		"stealth_and_infiltration": 2,
		"magic_tricks_and_gambling": 1,
	}
	assiduity = {
		"history_and_politics": 2,
		"cooking_and_botany": 2,
		"religion_and_arcane": 3,
	}
	eloquence = {
		"bargaining_and_investment": 1,
		"lie_and_persuasion": 0,
		"foreign_language": 0,
	}
	sixthSense = {
		"feeling_and_action": 3,
		"stealing_and_locksmithing": 3,
		"cold_blood": 5,
	}
	smartness = {
		"logic": 0,
		"engineering_and_mathematics": 1,
		"empathy_and_psychology": 1,
	}
	stamina = {
		"patience": 3,
		"pain_resistance": 3,
		"distance_walking": 2,
	}
	strength = {
		"powerlifting": 5,
		"self_defense_and_arcadian_wrestling": 5,
		"weapons_handling": 7,
	}
	
	comment = "Tu es libre et sans attache, ça se voit… ça se sent même…"
	
	conscience = {
		"specific": "Ton but est ailleurs, tu es libre et sans attache, et ça se voit… ça se sent même… Autant être claire, t’as pas un kopeck… L’avantage par contre c’est que tu peux demander un pièce à n’importe qui.",
		"general": "Ton salut est autre part… Perso, je ne vois pas trop où...",
	}
	
	specialAbility = "Mendicité"
