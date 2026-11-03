var _barMiddleX = sprite_width/2

draw_set_halign(fa_center)
draw_set_valign(fa_center)

switch (barId)
{
		case 0:
		volumeDoQ = "Volume dos Efeitos Sonoros:";
		break;
		
		case 1:
		volumeDoQ = "Volume da Música:";
		break;
}

if (obj_menuButtonController.volumePointer == barId)
{
	color1 = c_yellow;
	color2 = c_orange;
}
else
{
	color1 = c_white;
	color2 = c_gray;
}

draw_text_transformed_colour(x + _barMiddleX, y-40, volumeDoQ, 2, 2, 0, color1, color1, color2, color2, 1)

draw_self();