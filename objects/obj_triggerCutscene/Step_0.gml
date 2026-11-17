if room == rm_libraryEntrance {

{
    if (place_meeting(x, y, obj_hel) && !instance_exists(obj_pauser)){
	instance_create_depth(x, y, 0, obj_pauser);
	with (obj_mel)
	{
		cutsceneTurnPhase = 1;
		cutsceneTurnAt = current_time + 2000;
	}
	instance_destroy();
    }
}
} else if (room == rm_warpedHouse2 && isUnlocked) {
    if (place_meeting(x, y, obj_hel) && !instance_exists(obj_fade)) {
        var _fade = instance_create_depth(x, y, -9999999, obj_fade);
        _fade.isWarpedHouse2Cutscene = true;
        _fade.cutsceneAudioFadeStarted = true;
        _fade.cutsceneAudioFadeStartedAt = current_time;
        audio_group_set_gain(audiogroup_default, 0, 3000);
        audio_group_set_gain(ag_music, 0, 3000);
        audio_group_set_gain(ag_sfx, 0, 3000);

        if (!instance_exists(obj_pauser)) {
            instance_create_depth(x, y, 0, obj_pauser);
        }
    }
	
};