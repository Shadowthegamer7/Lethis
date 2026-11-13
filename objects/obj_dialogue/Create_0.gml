start_talk = 0;
total_boxes = sprite_get_number(sprite_index) - 2;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/1.2;

image_xscale = 0.375
image_yscale = 0.375
image_index = start_talk;

depth = -1500
image_speed = 0;

audio_play_sound(snd_talk, 1, false);

