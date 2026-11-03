//key assigning
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
run_key = keyboard_check(vk_shift);

//if keys are pressed
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pauser
if instance_exists(obj_pauser)
{
	xspd = 0;
	yspd = 0;
};

//sprite and bounding box
mask_index = spr_ral_walk_down
if yspd == 0
{
   if xspd > 0 {face = RIGHT};
   if xspd < 0 {face = LEFT};
}
//quick fix for whenever you walk
//in one direction and points the wrong way 
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

if xspd == 0
{
    if yspd > 0 {face = DOWN};
    if yspd < 0 {face = UP};
}

//collision
if place_meeting(x + xspd, y, obj_wall)
{
    xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall)
{
    yspd = 0;
}

is_moving = (xspd != 0 || yspd != 0);

//speed 

x += xspd;
y += yspd;


if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};


// MAIN sprite logic
sprite_index = sprite[face];

if is_moving && !was_moving
{
    image_index = 1;
}
was_moving = is_moving;


//animate and making sure that it won't prevent the emote
if !is_moving && (face != WAVE) {image_index = 0}


//run logic
if keyboard_check(vk_shift) && (face != WAVE)
{
    if (move_spd < 2)
    { 
        move_spd += 0.1;
    }
   image_speed = 1.5;
}

//setting speed to normal
if keyboard_check_released(vk_shift) 
{
    move_spd = default_spd;
	image_speed = 1;
}
//fix for animation speed bug
if (image_speed = 1.5) && !keyboard_check(vk_shift){
	image_speed = 1
};

//wave emote
//one frame of walking animation plays before wave
if (keyboard_check_pressed(vk_space)) && (face == DOWN) && (is_moving = 0)
{
    
    face = WAVE;
    move_spd = 0;
  
}


//depth

depth = -bbox_bottom;
 

