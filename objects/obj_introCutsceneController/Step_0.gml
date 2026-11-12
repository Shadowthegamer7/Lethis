if (!instance_exists(obj_fade)) && (_repeat)
{
	time_source_start(_startCutscene);
    _repeat = false;
}


if instance_exists(obj_introCutsceneDialogue){
	with (obj_introCutsceneDialogue){
		if image_index >= _changeBg1 && image_index < _changeBg2
    		{
    			other.changeBg(bg_introComputer)	
    		}
		else if image_index >= _changeBg2 && image_index < _changeBg3
    		{
    			other.changeBg(bg_introComputerScreen)	
    		}
		else
      		{
      			other.changeBg(bg_introBlack)	
            };
		}
}