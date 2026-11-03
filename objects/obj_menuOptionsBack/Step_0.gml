if obj_menuButton.gotooptions == 1 && !audio_is_playing(snd_button)
{
	x = lerp(x, 40, 0.1)
	y = 570
}

if (obj_menuButtonController.volumePointer == 2) && keyboard_check_pressed(vk_enter)
{
	obj_menuButtonController.gotooptions = 0;
	obj_menuButtonController.pointer = 0;
	obj_menuButtonController.volumePointer = 0;
	with (obj_menuButton)
	{
		gotooptions = 0;
	}
	audio_play_sound(snd_button,1,0)
};

if obj_menuButton.gotooptions == 0 && !audio_is_playing(snd_button)
{
	x = lerp(x,880,0.1)
}
