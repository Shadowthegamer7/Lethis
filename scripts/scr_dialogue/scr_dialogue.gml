function flavorText(dialogueBox){
	
	if (distance_to_object(obj_hel) < 20
	&& keyboard_check_pressed(ord("E"))
	&& !instance_exists(obj_dialogue))
	{
		var dialog = instance_create_layer(x, y, "Dialogue", dialogueBox);
		
	}
}

function bigtalk(talkspd, dialogueBox, talkerspr){
	if (distance_to_object(obj_hel) < 20
	&& keyboard_check_pressed(ord("E")) 
	&& !instance_exists(obj_dialogue)) 
	{

		image_speed = talkspd;
		var inst = instance_create_layer(x, y, "Dialogue", dialogueBox);
		
			if has_talked == 0 {
				inst.total_boxes = sprite_get_number(talkerspr) - 2;
				inst.start_talk = 0	
				has_talked = 1
			}
			else {
				inst.total_boxes = sprite_get_number(talkerspr) - 1;
				inst.start_talk = sprite_get_number(talkerspr) - 1;
			}
		inst.image_index = inst.start_talk;
	}
 
if (distance_to_object(obj_hel) > 20) || !instance_exists(obj_dialogue) {
		image_speed = 0;
		image_index = 0;
	};
}