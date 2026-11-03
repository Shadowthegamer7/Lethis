draw_self();
draw_set_font(fnt_text);
draw_set_valign(fa_left);
draw_set_halign(fa_left);

var buttonLabel = "";
switch (buttonText)
{
	case 0: buttonLabel = "Iniciar"; break;
	case 1: buttonLabel = "Opções"; break;
	case 2: buttonLabel = "Sair"; break;
}

var textScale = 2;
var textX = x + sprite_get_width(sprite_index) * image_xscale * 0.5;
var textY = y + sprite_get_height(sprite_index) * image_yscale * 0.5;
var textDrawX = textX - string_width(buttonLabel) * textScale * 0.5;
var textDrawY = textY - string_height(buttonLabel) * textScale * 0.5;

if (pointer == buttonText)
{
	draw_text_transformed_colour(textDrawX, textDrawY, buttonLabel, textScale, textScale, 0, c_yellow, c_yellow, c_orange, c_orange, 1);
}
else
{
	draw_text_transformed_colour(textDrawX, textDrawY, buttonLabel, textScale, textScale, 0, c_white, c_white, c_white, c_white, 1);
}
