var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
var _seconds = 2;
var _startCutscene = time_source_create(time_source_global, _seconds, time_source_units_seconds, changeBg, [back_id]);

function changeBg(back_id) {
	layer_background_sprite(back_id, bg_introComputer);
	};

if (!instance_exists(obj_fade)) && (_repeat)
{
	time_source_start(_startCutscene);
    _repeat = false;
}