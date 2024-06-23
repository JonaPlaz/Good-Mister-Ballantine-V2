extends Aspiration

class_name Tricker

func _init():
	agility = {
		"entertainment": 2,
		"stealth_and_infiltration": 3,
		"magic_tricks_and_gambling": 3,
	}
	assiduity = {
		"history_and_politics": 1,
		"cooking_and_botany": 1,
		"religion_and_arcane": 0,
	}
	eloquence = {
		"bargaining_and_investment": 5,
		"lie_and_persuasion": 3,
		"foreign_language": 3,
	}
	sixthSense = {
		"feeling_and_action": 5,
		"stealing_and_locksmithing": 7,
		"cold_blood": 5,
	}
	smartness = {
		"logic": 1,
		"engineering_and_mathematics": 0,
		"empathy_and_psychology": 0,
	}
	stamina = {
		"patience": 1,
		"pain_resistance": 1,
		"distance_walking": 2,
	}
	strength = {
		"powerlifting": 3,
		"self_defense_and_arcadian_wrestling": 2,
		"weapons_handling": 2,
	}
	
	comment = "Les combines ça te connaît. Légal et Illégal."
	
	conscience = {
		"specific": "Les combines ça te connaît. Légal et illégal. Tu es un facilitateur, les gens viennent te voir et te proposent des choses qu’il ne propose pas aux autres. Tu attires les bonnes affaires, mais on se méfiera toujours de toi...",
		"general": "Tu es le genre à avancer que deux et deux font cinq. Le pire c’est qu’en générale tu as raison...",
	}
	
	special_ability = "Tombé du camion"
