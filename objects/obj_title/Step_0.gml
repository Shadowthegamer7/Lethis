if (obj_menuButtonController.gotooptions == 1)
{

	if !audio_is_playing(snd_button) {x = lerp(x, camera_get_view_border_x(view_camera[0]) - sprite_width-100, 0.1)}

};

if (obj_menuButtonController.gotooptions == 0)
{

	if !audio_is_playing(snd_button) {x = lerp(x,260,0.1)}

};