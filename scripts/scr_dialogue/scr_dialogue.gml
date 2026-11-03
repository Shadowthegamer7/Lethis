function simpletalk(talker, ralEmotion){
	
	if (distance_to_object(obj_ralsei) < 20 
	&& keyboard_check_pressed(ord("E"))
	&& !instance_exists(obj_dialogue))
	{
		var inst = instance_create_layer(x, y, "Instances", talker);
		var instPor = instance_create_layer(inst.x - sprite_get_width(spr_dummyDialogue) * 0.375/2, 
											inst.y - sprite_get_height(spr_dummyDialogue) * 0.375/2, 
											"Instances", obj_ralseiPortrait);
		instPor.image_index = ralEmotion
		
	}
}

function bigtalk(talkspd, talker, talkerspr){
	if (distance_to_object(obj_ralsei) < 20 
	&& keyboard_check_pressed(ord("E")) 
	&& !instance_exists(obj_dialogue)) 
	{

		image_speed = talkspd;
		var inst = instance_create_layer(x, y, "Instances", talker);
		
			if has_talked == 0 {
				inst.total_talk = sprite_get_number(talkerspr) - 2;
				inst.start_talk = 0	
				has_talked = 1
			}
			else {
				inst.total_talk = sprite_get_number(talkerspr) - 1;
				inst.start_talk = sprite_get_number(talkerspr) - 1;
			}
		inst.image_index = inst.start_talk;
	}
 
if (distance_to_object(obj_ralsei) > 20) || !instance_exists(obj_dialogue) {
		image_speed = 0;
		image_index = 0;
	};
}