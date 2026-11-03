if (obj_menuButtonController.gotooptions == 1) && !audio_is_playing(snd_button)
	{
		var _camera = view_camera[0];
		var _destinationx = camera_get_view_x(_camera) + camera_get_view_width(_camera) / 2
			- sprite_get_width(sprite_index) * image_xscale / 2;
		x = lerp(x, _destinationx, 0.1)
		y = camera_get_view_y(_camera) + camera_get_view_height(_camera) / 2
			- sprite_get_height(sprite_index) * image_yscale / 2;
	}
	
if (obj_menuButtonController.gotooptions == 0) && !audio_is_playing(snd_button)
{
	x = lerp(x, 880, 0.1)
}