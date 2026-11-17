	if (!isReturning)
	{
		isReturning = true;
		if (target_rm == rm_warpedHouse2)
		{
			global.melLeftWarpedHouse1 = true;
		}
		room_goto(target_rm);
		obj_hel.x = target_x;
		obj_hel.y = target_y;
		obj_hel.face = target_face;
		image_speed = -1;
	}
	else
	{
		instance_destroy();
	}