if (keyboard_check_pressed(ord("Q")))
{
	is_out ++ 
	do_animation = 1
}

if (is_out > 1)
{
	is_out = 0
}

if (is_out = 0) && do_animation = 0
{
	x = camera_get_view_x(view_camera[0]);
}


if (is_out = 0) && do_animation >= 1
{
	x = lerp(x, camera_get_view_x(view_camera[0]), 0.2);
}


if (is_out = 1) && do_animation >= 1
	{
	x = lerp(x, camera_get_view_x(view_camera[0]) + sprite_get_width(spr_helpMenu), 0.2);
	};
	
	
y = camera_get_view_y(view_camera[0]) + 20;

if x <= camera_get_view_x(view_camera[0]) +1 {do_animation = 0; is_out = 0}

depth = -998

draw_self();

