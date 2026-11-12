lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
_seconds = 2;
targetBg = bg_introBlack;
function createBox() {instance_create_layer(x, y, "Instances", obj_introCutsceneDialogue);}
function changeBg(targetBg) {layer_background_sprite(back_id, targetBg)};
_startCutscene = time_source_create(time_source_global, _seconds, time_source_units_seconds, method(id, createBox));
_moveToLibrary= time_source_create(time_source_global, _seconds, time_source_units_seconds, room_goto_next)
_repeat = true