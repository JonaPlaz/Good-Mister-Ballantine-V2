extends Node

class_name Uuid

@export_range(10, 30, 1) var id_length := 20
@export_range(3, 7, 1) var id_section_length := 5

var chars := ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",]

func generateId():
	var retval := ""
	
	# Set the seed for this ID
	randomize()
	
	for i in range(id_length):
		retval += chars.pick_random()
		
		# Let's add a dash to keep it human-readable
		if retval.replace("-", "").length() % id_section_length == 0:
			retval += "-"
	
	# Remove the dash on the right if it is needed and return the ID
	return retval.rstrip("-")
