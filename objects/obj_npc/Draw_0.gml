if distance_to_object(obj_ralsei) < 20 && !instance_exists(obj_dialogue)
{
	draw_sprite(spr_talkButton,1,x,y - sprite_height -3);	
}

draw_self();