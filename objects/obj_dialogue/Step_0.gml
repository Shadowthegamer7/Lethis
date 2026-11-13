if instance_exists(obj_dialogue) && keyboard_check_pressed(ord("E")) {
	
	audio_play_sound(snd_next, 1, false);
	
	if (image_index <= total_boxes) 
    {
		image_index++
	}
	else {
		instance_destroy();
	}
}

