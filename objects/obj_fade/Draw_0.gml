draw_self();

if (room == rm_warpedHouse2 && isWarpedHouse2Cutscene && image_alpha >= 1 && cutsceneAudioFadeComplete) {
	var _camera = view_camera[0];
	var _centerX = camera_get_view_x(_camera) + camera_get_view_width(_camera) * 0.5;
	var _centerY = camera_get_view_y(_camera) + camera_get_view_height(_camera) * 0.5;
	var _previousFont = draw_get_font();
	var _previousColor = draw_get_color();
	var _previousHAlign = draw_get_halign();
	var _previousVAlign = draw_get_valign();

	draw_set_font(fnt_text);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(_centerX, _centerY, "Continua...");

	draw_set_font(_previousFont);
	draw_set_color(_previousColor);
	draw_set_halign(_previousHAlign);
	draw_set_valign(_previousVAlign);
}
