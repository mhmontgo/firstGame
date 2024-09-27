var scale = 4;
var xface=0;
var yface=0


	//reset here for fewer checks
    hspeed = 0;  // Stop horizontal movement if no D-pad input
	vspeed = 0;  // Stop vertical movement
	movement="walk";
	
//Move Left
if (gamepad_button_check(0, gp_padl)) {
   xface=-1;
   facing="left";
	
	if (gamepad_button_check(0, gp_padu)) {
		//Move Up
		hspeed = -dia_speed;
		vspeed = -dia_speed;
		yface=1;
		facing="upleft";
	}
	else if(gamepad_button_check(0, gp_padd)){
		//Move Down
		hspeed = -dia_speed;
		vspeed = dia_speed;
		yface=-1;
		facing="downleft";
	}
	else{
		 hspeed = -move_speed;  // Move left
	}
}
else if (gamepad_button_check(0, gp_padr)) {
	xface=1;
	facing="right";
	
	if (gamepad_button_check(0, gp_padu)) {
		//Move Up
		hspeed = dia_speed;
		vspeed = -dia_speed;
		yface=1;
		facing="upright";
	}
	else if(gamepad_button_check(0, gp_padd)){
		//Move Down
		hspeed = dia_speed;
		vspeed = dia_speed;
		yface=-1;
		facing="downright";
	}
	else{
		 hspeed = move_speed;  // Move left
	}
}
// Vertical movement
else if (gamepad_button_check(0, gp_padu)) {
    vspeed = -move_speed;  // Move up
	xface=0;
	yface=-1;
	facing="up";
	// Walk up sprite
sprite_index = spr_player_walk_up;
}
else if (gamepad_button_check(0, gp_padd)) {
    vspeed = move_speed;  // Move down
	xface=0;
	yface=1;
	facing="down";
	// Walk down sprite
sprite_index = spr_player_walk_down;
}
else {
    movement="idle";
}


// Apply movement
x += hspeed;
y += vspeed;