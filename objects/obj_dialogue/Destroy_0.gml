if (instance_exists(nameBoxID))
{
	instance_destroy(nameBoxID);
}

global.dialogueCooldownUntil = current_time + 500;