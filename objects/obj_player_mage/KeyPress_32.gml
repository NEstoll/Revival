/// @description Insert description here
// You can write your code in this editor

if (state == PlayerState.CARRYING_ITEM) {
	//throw item
	
} else {
	//see if there are obj nearby
	obj = object_index //TODO fix
	if (distance_to_object(obj) < pickup_radius) {
		//pick it up
		state = PlayerState.CARRYING_ITEM
		item = obj
	}
		
		
}


