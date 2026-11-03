if instance_exists(obj_dialogue) && keyboard_check_pressed(ord("E")) {
	
	audio_play_sound(snd_next, 1, false);
	
	if (image_index >= total_talk) {
		instance_destroy(obj_portrait);
		instance_destroy();
	}
	else {
		image_index ++
	}
}

