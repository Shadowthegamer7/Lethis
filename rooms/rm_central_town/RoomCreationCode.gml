if !audio_is_playing(mus_castletown)
{
		audio_stop_sound(global.currenttrack)
		obj_musicPlayer.music_playing = 0;
};