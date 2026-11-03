alphaRaise = function () 
{
	if noRepeat = 0 {
		if alphaAmount < 1 
			{
				alphaAmount += 0.01
			}
					}
}

alphaLower = function () 
{
		if alphaAmount > 0 
			{
				alphaAmount -= 0.01
			}
}

if noRepeat = 0 
{
fade_in = time_source_create(time_source_game, 2, time_source_units_seconds, alphaRaise);
}


time_source_start(fade_in);

if (alphaAmount = 1) 
{
	time_source_destroy(fade_in);
	fade_out = time_source_create(time_source_game, 2, time_source_units_seconds, alphaLower);
	time_source_start(fade_out);
	noRepeat = 1
}

if (alphaAmount == 0 && noRepeat = 1) 
{
	transToTitle = time_source_create(time_source_game, 2, time_source_units_seconds, goToTitle)
	time_source_start(transToTitle)
}

if keyboard_check_pressed(vk_enter) 
{
	alphaAmount = 1
	room_goto(rm_titlescreen)
}