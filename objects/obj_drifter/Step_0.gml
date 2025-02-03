/// @description Deez Nuts

// get input
upKey = keyboard_check( ord("W") );
leftKey = keyboard_check( ord("A") );
downKey = keyboard_check( ord("S") );
rightKey = keyboard_check( ord("D") );
pewKey = mouse_check_button(mb_left)

// player movement
#region
	// get direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
// get the x and y speeds
	var _spd = 0;
	var _inputlevel = point_distance(0, 0, _horizKey, _vertKey);
	_inputlevel = clamp(_inputlevel, 0, 4)
	_spd =  moveSpd * _inputlevel;
	
	xSpd = lengthdir_x(_spd, moveDir);
	ySpd = lengthdir_y(_spd, moveDir);
	
	//bonk
	if place_meeting( x + xSpd, y, obj_invis_water)
	{
		xSpd = 0;
	}
	
	if place_meeting( x, y + ySpd, obj_invis_water)
	{
		ySpd = 0;
	}
	
	// move player
	x += xSpd
	y += ySpd
#endregion	
	
//player aiming
#region
	centerY = y + centerYOffset;
	//aim
		aimDir = point_direction( x, centerY, mouse_x, mouse_y);
#endregion	


//pew pew
if pewKey
{
	//create bullet
	var _xOffset = lengthdir_x( weaponLength + weaponOffsetDist, aimDir)
	var _yOffset = lengthdir_y( weaponLength + weaponOffsetDist, aimDir)
	var _bulletInst = instance_create_depth( x, centerY, depth-100, obj_projectile);

	// change bullet direction
	with(_bulletInst)
	{
		dir = other.aimDir;
	}

}