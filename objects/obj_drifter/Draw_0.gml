/// @description Insert description here
// You can write your code in this editor
draw_self();

//draw weapon
	//draw the weapon
	//get the weapon off the player's body
	var _xOffset = lengthdir_x(4, aimDir ); 
	var _yoffset = lengthdir_y(4, aimDir );
	
	//flip the weapon upright
	var _weaponYsc1 = 1;
	if aimDir > 90 && aimDir < 270
	{
		_weaponYsc1 = -1;
	}

draw_sprite_ext( Big_Shotgun, 0, x, centerY, 1, 1, aimDir ,c_white, 1);