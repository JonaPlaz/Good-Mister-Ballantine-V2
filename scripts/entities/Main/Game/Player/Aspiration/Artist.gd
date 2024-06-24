extends Aspiration

class_name Artist

func _init():
	agility = {
		"entertainment": 1,
		"stealth_and_infiltration": 0,
		"magic_tricks_and_gambling": 1,
	}
	assiduity = {
		"history_and_politics": 3,
		"cooking_and_botany": 5,
		"religion_and_arcane": 3,
	}
	eloquence = {
		"bargaining_and_investment": 3,
		"lie_and_persuasion": 3,
		"foreign_language": 2,
	}
	sixthSense = {
		"feeling_and_action": 3,
		"stealing_and_locksmithing": 2,
		"cold_blood": 2,
	}
	smartness = {
		"logic": 5,
		"engineering_and_mathematics": 5,
		"empathy_and_psychology": 7,
	}
	stamina = {
		"patience": 2,
		"pain_resistance": 1,
		"distance_walking": 1,
	}
	strength = {
		"powerlifting": 0,
		"self_defense_and_arcadian_wrestling": 0,
		"weapons_handling": 1,
	}
	
	comment = "Vous savez manier les mots et les couleurs, les sentiments et les instruments."
	
	conscience = {
		"specific": "Vous voyez la beauté enfoui sous la crasse. Vous savez manier les mots et les couleurs, les sentiments et les instruments. Vous êtes un animal mondain. Par contre « ses » fragiles petites mains ne sont faites pour toutes les tâches #MesMainsC’estMaVie.",
		"general": "Il y a deux types d’artistes, ceux qui pratiquent par obsession et ceux qui utilise l’art comme une façade justifiant leur inutilité. Dans les deux cas, ils sont foncièrement égocentriques..."
	}
	
	specialAbility = "Trouver sa muse / trouver son apprenti / payé au chapeau"
