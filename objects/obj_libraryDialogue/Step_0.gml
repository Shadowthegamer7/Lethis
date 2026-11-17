event_inherited();

switch (floor(image_index))
{
	case 0:
	case 2: 
    case 4:
	case 5: 
    case 7:
		speakerID = 2;
		break;
	case 1:
	case 6:
		speakerID = 1;
		break;
	default:
		speakerID = 0;
		break;
}
