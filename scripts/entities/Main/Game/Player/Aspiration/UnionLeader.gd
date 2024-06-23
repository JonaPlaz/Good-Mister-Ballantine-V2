extends Aspiration

class_name UnionLeader

func _init():
	agility = {
		"entertainment": 2,
		"stealth_and_infiltration": 2,
		"magic_tricks_and_gambling": 3,
	}
	assiduity = {
		"history_and_politics": 3,
		"cooking_and_botany": 3,
		"religion_and_arcane": 2,
	}
	eloquence = {
		"bargaining_and_investment": 7,
		"lie_and_persuasion": 5,
		"foreign_language": 5,
	}
	sixthSense = {
		"feeling_and_action": 3,
		"stealing_and_locksmithing": 5,
		"cold_blood": 3,
	}
	smartness = {
		"logic": 0,
		"engineering_and_mathematics": 1,
		"empathy_and_psychology": 1,
	}
	stamina = {
		"patience": 1,
		"pain_resistance": 0,
		"distance_walking": 0,
	}
	strength = {
		"powerlifting": 1,
		"self_defense_and_arcadian_wrestling": 1,
		"weapons_handling": 2,
	}
	
	comment = "Le plus important c’est la collectivité! Tu es un leader, mais au service des autres."
	
	conscience = {
		"specific": "Le plus important c’est la communauté ! Tu es un leader mais au service des autres. On te fait confiance, on te respecte. Par contre, tes collègues ont tendance à taper dans la caisse et que tu y trempes ou non, on va sûrement te le reprocher...",
		"general": "Nasdrovia camarade."
	}
	
	special_ability = "Solidarité"
