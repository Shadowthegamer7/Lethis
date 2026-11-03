draw_set_font(fnt_text);

if (obj_menuButtonController.volumePointer == 2)
{
	color1 = c_yellow;
	color2 = c_orange;
}
else
{
	color1 = c_white;
	color2 = c_gray;
}

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_self();
draw_text_transformed_colour(x+sprite_width/2,y+sprite_height/2,"Voltar",2,2,0,color1,color1,color2,color2,1)