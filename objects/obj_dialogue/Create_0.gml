start_talk = 0;
total_talk = 0;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/1.2;

image_xscale = 0.375
image_yscale = 0.375
image_index = start_talk;

depth = -999
image_speed = 0;

audio_play_sound(snd_talk, 1, false);

