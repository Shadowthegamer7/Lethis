if room == rm_central_town{
	roomid = 0
}

if room == rm_south_town{
	roomid = 1
}

if room == rm_titlescreen{
	roomid = 2
}

if (music_playing == 0) {
	
	switch (roomid) {
		case 0:
			playmusic(mus_castletown);
		break;
	
		case 1:
			playmusic(mus_dump);
		break;
		
		case 2:
			playmusic(mus_title);
		break;
	}
		
};


