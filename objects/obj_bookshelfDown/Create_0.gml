// Inherit the parent event
event_inherited();

if image_index == 0
{
	dialogueID = obj_dialoguePropBookshelfEmpty;
}
else
{
	dialogueID = choose(obj_dialoguePropBookshelf1, obj_dialoguePropBookshelf2);
}


