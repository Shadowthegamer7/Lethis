if (!variable_global_exists("melLeftWarpedHouse1"))
{
    global.melLeftWarpedHouse1 = false;
}

if (room == rm_warpedHouse1 && global.melLeftWarpedHouse1)
{
    instance_destroy();
    exit;
}

spawnpointx = obj_spawnpointMel.x
spawnpointy = obj_spawnpointMel.y

x = spawnpointx;
y = spawnpointy;

xspd = 0;
yspd = 0;
was_moving = 0;

move_spd = 1;
default_spd = 1;


sprite[RIGHT] = spr_mel_right
sprite[UP] = spr_mel_up;
sprite[LEFT] = spr_mel_left;
sprite[DOWN] = spr_mel_down;

if room == rm_libraryEntrance{
face = UP;} else {face = DOWN;}

faceBeforeTurn = face;
libraryEndDialogueSpawned = false;

image_speed = 0;

isLookDownCutscene = false;
cutsceneTurnPhase = 0;
cutsceneTurnAt = 0;

spawnSurprise = true;
melTalkButton = noone;
