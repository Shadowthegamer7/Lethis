if image_alpha < 1 && image_index == 0 {image_alpha += _fadeRate}

if image_alpha = 1 
{
	if keyboard_check_pressed(ord("E")) && image_index < _totalFrames {image_index++}
	else if keyboard_check_pressed(ord("E")) && image_index == _totalFrames {_dissapear = true}	
}

if _dissapear == true {image_alpha -= _fadeRate}
if image_alpha <= 0 {time_source_start(obj_introCutsceneController._moveToLibrary) ;instance_destroy();}