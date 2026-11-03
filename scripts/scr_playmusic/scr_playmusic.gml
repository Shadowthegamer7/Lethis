global.currenttrack = 0;

function playmusic(musictitle){
	audio_play_sound(musictitle, 100, true);
	music_playing = 1;
	global.currenttrack = musictitle;
}