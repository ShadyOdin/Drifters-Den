/// @description Deez Nuts

// get input
upKey = keyboard_check(vk_up);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
rightKey = keyboard_check(vk_right);


// player movement
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