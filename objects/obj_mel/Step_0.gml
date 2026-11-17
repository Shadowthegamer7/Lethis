if (room == rm_warpedHouse2)
{
    global.melLeftWarpedHouse1 = true;

    if (instance_exists(melTalkButton))
    {
        with (melTalkButton) instance_destroy();
        melTalkButton = noone;
    }

    instance_destroy();
    exit;
}

depth = -bbox_bottom
mask_index = spr_mel_down

if room == rm_libraryEntrance {
if (cutsceneTurnPhase == 1 && current_time >= cutsceneTurnAt)
    {
    	face = RIGHT;
    	cutsceneTurnPhase = 2;
    	cutsceneTurnAt = current_time + 1000;
    }
else if (cutsceneTurnPhase == 2 && current_time >= cutsceneTurnAt)
    {
    	face = DOWN;
    	cutsceneTurnPhase = 3;
    }
else if (cutsceneTurnPhase == 3 && spawnSurprise)
    {
    	instance_create_depth(x, y - sprite_height, -999, obj_alert);
    	spawnSurprise = false;
    }
else if (cutsceneTurnPhase == 4 && !audio_is_playing(mus_lightAmbiance))
    {
    	audio_play_sound(mus_lightAmbiance, 1, false);
    	cutsceneTurnAt = current_time + 500;
    	cutsceneTurnPhase = 5;
    }
else if (cutsceneTurnPhase == 5 && current_time >= cutsceneTurnAt && !instance_exists(obj_dialogue))
   {
   	instance_create_layer(x, y, "Dialogue", obj_libraryDialogue);
   	cutsceneTurnPhase = 6;
   }
else if (cutsceneTurnPhase == 6 && !instance_exists(obj_dialogue))
    {
    	if (global.currenttrack != 0)
    	{
    		audio_stop_sound(global.currenttrack);
    	}
    
    	audio_stop_sound(mus_lightAmbiance);
    	audio_play_sound(mus_library, 100, true);
    	global.currenttrack = mus_library;
    
    	if (instance_exists(obj_musicPlayer))
    	{
    		obj_musicPlayer.music_playing = 1;
    	}
    
    	face = LEFT;
    	cutsceneTurnPhase = 7;
    	with (obj_pauser) instance_destroy();
    }
else if (cutsceneTurnPhase == 7) 
{
    if (distance_to_object(obj_hel) < 20)
    {
        if (!instance_exists(obj_dialogue) && !instance_exists(obj_talkButton))
        {
            melTalkButton = instance_create_layer(x, y - sprite_get_height(spr_mel_down)*1.2, "Dialogue", obj_talkButton)
            melTalkButton.depth = -999
        }

        if (instance_exists(melTalkButton) && !instance_exists(obj_dialogue) && keyboard_check_pressed(ord("E")))
        {
            cutsceneTurnPhase = 8
        }
    }
    else if (instance_exists(melTalkButton))
    {
        with (melTalkButton) instance_destroy();
        melTalkButton = noone;
    }
}
else if (cutsceneTurnPhase == 8 && !instance_exists(obj_dialogue))
{
    if (!instance_exists(obj_pauser))
    {
        instance_create_depth(x, y, 0, obj_pauser);
    }

    if (instance_exists(melTalkButton))
    {
        with (melTalkButton) instance_destroy();
        melTalkButton = noone;
    }

    if (instance_exists(obj_hel))
    {
        if (abs(obj_hel.x - x) > abs(obj_hel.y - y))
        {
            face = (obj_hel.x > x) ? RIGHT : LEFT;
        }
        else
        {
            face = (obj_hel.y > y) ? DOWN : UP;
        }
    }

    instance_create_layer(x, y, "Dialogue", obj_libraryDialogueEndPart1)
}
else if (cutsceneTurnPhase == 9)
    {
        if instance_exists(obj_dialogue) {instance_destroy(obj_dialogue)}
        if (global.currenttrack != 0)
        {
            audio_stop_sound(global.currenttrack);
            global.currenttrack = 0;
        }
        audio_play_sound(snd_ring, 100, false);
        
        cutsceneTurnPhase = 10;
    }
else if (cutsceneTurnPhase == 10)
{
    if (!libraryEndDialogueSpawned && !audio_is_playing(snd_ring) && !instance_exists(obj_dialogue))
    {
        instance_create_layer(x, y, "Dialogue", obj_libraryDialogueEndPart2);
        libraryEndDialogueSpawned = true;
        audio_play_sound(mus_library2, 100, true);
        global.currenttrack = mus_library2;

        if (instance_exists(obj_musicPlayer))
        {
            obj_musicPlayer.music_playing = 1;
        }
    }

    if (libraryEndDialogueSpawned)
    {
        if (instance_exists(obj_libraryDialogueEndPart2) && obj_libraryDialogueEndPart2.image_index >= 2)
        {
            faceBeforeTurn = face;
            if (face == RIGHT)
            {
                face = LEFT;
            }
            else if (face == LEFT)
            {
                face = RIGHT;
            }
            else if (face == DOWN)
            {
                face = UP;
            }
            else
            {
                face = DOWN;
            }

            cutsceneTurnPhase = 11;
        }
        else if (!instance_exists(obj_dialogue))
        {
            faceBeforeTurn = face;
            cutsceneTurnPhase = 11;
        }
    }
}
else if (cutsceneTurnPhase == 11 && !instance_exists(obj_dialogue))
{
    audio_play_sound(snd_hangup, 100, false);
    cutsceneTurnAt = current_time + 1000;
    cutsceneTurnPhase = 12;
}
else if (cutsceneTurnPhase == 12 && current_time >= cutsceneTurnAt) && !instance_exists(obj_dialogue)
{
    face = faceBeforeTurn;
    instance_create_layer(x, y, "Dialogue", obj_libraryDialogueEndPart3)
}
else if (cutsceneTurnPhase == 13) && !instance_exists(obj_warptohouse)
{
    instance_create_depth(x, y, 0, obj_warptohouse)
}
    
} else if room == rm_warpedHouse1 {
    var _talkButtonY = y - sprite_get_height(spr_mel_down) * 1.2;

    if (instance_exists(obj_hel) && distance_to_object(obj_hel) < 20 && !instance_exists(obj_dialogue))
    {
        if (!instance_exists(melTalkButton) && !instance_exists(obj_talkButton))
        {
            melTalkButton = instance_create_layer(x, _talkButtonY, "Dialogue", obj_talkButton);
            melTalkButton.depth = -999;
        }

        if (instance_exists(melTalkButton))
        {
            melTalkButton.x = x;
            melTalkButton.y = _talkButtonY;

            if (keyboard_check_pressed(ord("E")))
            {
                with (melTalkButton) instance_destroy();
                melTalkButton = noone;
                instance_create_layer(x, y, "Dialogue", obj_melDialogueHouse);
            }
        }
    }
    else if (instance_exists(melTalkButton))
    {
        with (melTalkButton) instance_destroy();
        melTalkButton = noone;
    }
}

sprite_index = sprite[face];

