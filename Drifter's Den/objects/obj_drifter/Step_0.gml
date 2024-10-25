/// @desc Core Player Logic
rightkey = keyboard_check(vk_right);
leftkey = keyboard_check(vk_left);
upkey = keyboard_check(vk_up);
downkey = keyboard_check(vk_down);

//Get X Y Sped

xspeed = (rightkey - leftkey) * movespeed;
yspeed = (downkey- upkey) * movespeed;

//move Drifer
x += xspeed
y += yspeed


//Horizantal Collision
if (place_meeting(x + xspeed, y, obj_invis_wall))
{
	xspeed = 0;
}

//Vertical Collision
if (place_meeting(x, y + yspeed, obj_invis_wall))
{
	yspeed = 0;
}


