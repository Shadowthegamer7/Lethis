var _offsetx = 525
var _offsety = -9


volumeAmount = clamp(volumeAmount, -500, 0)
volumeGainSFX = clamp(volumeGainSFX, 0, 1)
volumeGainMUS = clamp(volumeGainMUS, 0, 1)
if (ballId == 0) {audio_group_set_gain(ag_sfx, volumeGainSFX, 0);}
if (ballId == 1) {audio_group_set_gain(ag_music, volumeGainMUS, 0);}

if (obj_volumeBar.barId == 0) {
	_offsety = -17
}


x = obj_volumeBar.x + _offsetx + volumeAmount
y = obj_volumeBar.y + _offsety

with (obj_volumeBar) {
    if (barId == other.ballId) {
        other.y = y -(-9);
    }
}

if (obj_menuButtonController.gotooptions == 1) 
{	
	
		//
	
}

////////////////////////////////////////////////////////////////

