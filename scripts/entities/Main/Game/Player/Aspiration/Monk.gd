extends Aspiration

class_name Monk

func _init():
	agility = {
		"entertainment": 0,
		"stealth_and_infiltration": 1,
		"magic_tricks_and_gambling": 0,
	}
	assiduity = {
		"history_and_politics": 5,
		"cooking_and_botany": 5,
		"religion_and_arcane": 7,
	}
	eloquence = {
		"bargaining_and_investment": 1,
		"lie_and_persuasion": 2,
		"foreign_language": 1,
	}
	sixthSense = {
		"feeling_and_action": 1,
		"stealing_and_locksmithing": 0,
		"cold_blood": 1,
	}
	smartness = {
		"logic": 3,
		"engineering_and_mathematics": 2,
		"empathy_and_psychology": 3,
	}
	stamina = {
		"patience": 3,
		"pain_resistance": 5,
		"distance_walking": 3,
	}
	strength = {
		"powerlifting": 2,
		"self_defense_and_arcadian_wrestling": 3,
		"weapons_handling": 2,
	}
	
	comment = "Officiellement tu aimes tout le monde, la vérité c’est que tu préfère les livres. Cependant, il faut être la dernière des ordures pour s’attaquer à un « homme d’église ». Ce jeux puni ceux qui s’y risque"
	
	conscience = {
		"specific": "Les gens ce n’est pas trop ton truc. Enfin si officiellement tu aimes tout le monde mais la vérité c’est que tu préfère le caractère plus taiseux des livres. Cependant il faut être la dernière des ordures pour s’attaquer à un « homme d’église ». Ce jeux puni ceux qui s’y risque",
		"general": "Dans la tradition arcadienne les moines ne rigolent pas du tout au combat. Même ceux à tendance Monothéiste."
	}
	
	specialAbility = "Charité"
