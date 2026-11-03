if canmovebuttons == 1 {

if keyboard_check_pressed(vk_down) && (pointer < 2)
{
	pointer += 1
	audio_play_sound(snd_menuSwitch, 100, 0);
};
if keyboard_check_pressed(vk_up) && (pointer > 0)
{
	pointer -= 1
	audio_play_sound(snd_menuSwitch, 100, 0)
};

};

if keyboard_check_pressed(vk_enter) && (pointer == 0)
{
	gotonextroom = 1
	canmovebuttons = 0
	audio_play_sound(snd_button, 100, 0);
};

if (gotonextroom == 1) && !audio_is_playing(snd_button)
{
	instance_create_depth(x, y, -100000, obj_fade);
	audio_sound_gain(mus_title, 0, 500);

};

if (audio_sound_get_gain(mus_title) < 0.01)
		{
			room_goto(rm_central_town)	
		};


if keyboard_check_pressed(vk_enter) && (pointer == 1) && (canmovebuttons == 1)
{
	gotooptions = 1
	audio_play_sound(snd_button, 100, 0);

};

if (gotooptions == 1)
{

	if !audio_is_playing(snd_button) {x = lerp(x, camera_get_view_border_x(view_camera[0]) - display_get_width()/7, 0.1)}
	canmovebuttons = 0
	
};


//////////////////////////////////////////////
//Audio Controllers//
/////////////////////////////////////////////

if gotooptions == 1
{
	if keyboard_check_pressed(vk_down)&&volumePointer<2{volumePointer++; audio_play_sound(snd_menuSwitch,1,0)}
	if keyboard_check_pressed(vk_up)&&volumePointer>0{volumePointer--; audio_play_sound(snd_menuSwitch,1,0)}
	
	 with (obj_volumeBall)
    {
        if (ballId == other.volumePointer)
        {
            if (keyboard_check_pressed(vk_left))
            {
                if (ballId == 0) volumeGainSFX -= 0.05;
                if (ballId == 1) volumeGainMUS -= 0.05;

                volumeAmount -= _moveBall;
                audio_play_sound(snd_next, 100, false);
            }

            if (keyboard_check_pressed(vk_right))
            {
                if (ballId == 0) volumeGainSFX += 0.05;
                if (ballId == 1) volumeGainMUS += 0.05;

                volumeAmount += _moveBall;
                audio_play_sound(snd_next, 100, false);
            }
        }
    }
}

if gotooptions == 0  && !audio_is_playing(snd_button)
{
	x = lerp(x, 40, 0.1);
	canmovebuttons = 1
}

//exit game
if keyboard_check_pressed(vk_enter) && (pointer == 2)
{
	game_end();
};
