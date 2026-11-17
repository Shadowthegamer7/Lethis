if (!instance_exists(dialogueID))
{
	exit;
}

var _dialogue = dialogueID;
var _speakerID = _dialogue.speakerID;
if (_speakerID != 1 && _speakerID != 2)
{
	exit;
}

var _dialogueSprite = _dialogue.sprite_index;
if (_dialogueSprite < 0)
{
	exit;
}

var _dialogueWidth = sprite_get_width(_dialogueSprite) * abs(_dialogue.image_xscale);
var _dialogueHeight = sprite_get_height(_dialogueSprite) * abs(_dialogue.image_yscale);
var _dialogueLeft = _dialogue.x - _dialogueWidth * 0.5;
var _dialogueTop = _dialogue.y - _dialogueHeight * 0.5;

x = _dialogueLeft;
image_xscale = abs(_dialogue.image_xscale);
image_yscale = abs(_dialogue.image_yscale);

if (_speakerID == 2)
{
	x = _dialogueLeft + _dialogueWidth;
	image_xscale = -image_xscale;
}

y = _dialogueTop;
draw_self();

var _speaker = "Melissa";
var _color = #2c2c6e;
if (_speakerID == 1)
{
	_speaker = "Helena";
	_color = #a8425a;
}

var _textX = x + (sprite_get_width(sprite_index) * 0.5 - sprite_get_xoffset(sprite_index)) * image_xscale;
var _textY = y + (sprite_get_height(sprite_index) * 0.5 - sprite_get_yoffset(sprite_index)) * image_yscale;
var _previousFont = draw_get_font();
var _previousHAlign = draw_get_halign();
var _previousVAlign = draw_get_valign();

draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_colour(_textX, _textY, _speaker, 0.5, 0.5, 0, _color, _color, _color, _color, 1);
draw_set_font(_previousFont);
draw_set_halign(_previousHAlign);
draw_set_valign(_previousVAlign);

