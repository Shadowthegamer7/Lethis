var _showTalkButton = false;
if instance_exists(obj_hel) && !instance_exists(obj_dialogue)
{
	var _nearestProp = instance_nearest(obj_hel.x, obj_hel.y, obj_interactableProp);
	_showTalkButton = (id == _nearestProp) && distance_to_object(obj_hel) < 20;
}

if _showTalkButton
{
	flavorText(dialogueID);

	if !instance_exists(talkButton)
	{
		var _middleX = (bbox_left + bbox_right) * 0.5;
		talkButton = instance_create_depth(_middleX, bbox_top - 3, -1200, obj_talkButton);
      
	}
}
else
{
	if instance_exists(talkButton)
	{
		with (talkButton) instance_destroy();
		talkButton = noone;
	}
}