facing="down";	//the direction the player is currently facing
movement="idle";
armor="dragon";	//changes the visual design drawn
image_speed=1;

// This variable is called
// move_speed and stores
// the movement speed of the
// player. The speed is in
// pixels-per-second.
scale=2;
move_speed = 2;
dia_speed=sqrt((move_speed*move_speed)+(move_speed*move_speed))/2;
image_xscale = scale;
image_yscale = scale;

// Initialize coins value at 0
coins = 0;