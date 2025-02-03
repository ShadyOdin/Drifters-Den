/// @description move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);



x += xspd;
y += yspd;

//collision
if place_meeting(x + xspd, y, obj_invis_wall)
{
	destroy = true;

}

//range
if point_distance(xstart, ystart, x, y) > maxDist
{
	destroy = true;
}

if destroy == true
{
	instance_destroy();	
}