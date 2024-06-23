extends Aspiration

class_name Unemployed

func _init():
	agility = {
		"entertainment": 7,
		"stealth_and_infiltration": 5,
		"magic_tricks_and_gambling": 5,
	}
	assiduity = {
		"history_and_politics": 0,
		"cooking_and_botany": 1,
		"religion_and_arcane": 1,
	}
	eloquence = {
		"bargaining_and_investment": 1,
		"lie_and_persuasion": 2,
		"foreign_language": 1,
	}
	sixthSense = {
		"feeling_and_action": 2,
		"stealing_and_locksmithing": 3,
		"cold_blood": 3,
	}
	smartness = {
		"logic": 5,
		"engineering_and_mathematics": 3,
		"empathy_and_psychology": 3,
	}
	stamina = {
		"patience": 0,
		"pain_resistance": 1,
		"distance_walking": 0,
	}
	strength = {
		"powerlifting": 2,
		"self_defense_and_arcadian_wrestling": 2,
		"weapons_handling": 3,
	}
	
	comment = "Le travail ce n’est pas pour toi… Heureusement on inventé le socialisme."
	
	conscience = {
		"specific": "Le travail ce n’est pas pour toi, heureusement on a inventé le socialisme.",
		"general": "Dieu bénisse, les sans dents !  Les sans but, les sans-emploi ! Les inemployables, les inactifs et les démunies. Vous êtes feignant mais le plus important, c’est que vous êtes d’abord victime du système."
	}
	
	special_ability = "Allocation chômage"
