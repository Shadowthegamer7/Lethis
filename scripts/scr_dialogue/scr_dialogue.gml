function flavorText(dialogueBox){
	
	if (distance_to_object(obj_hel) < 20
	&& keyboard_check_pressed(ord("E"))
	&& !instance_exists(obj_dialogue))
	{
		var dialog = instance_create_layer(x, y, "Dialogue", dialogueBox);
		
	}
}
