//movement input
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
 
//calculate movement
var moveH = keyRight - keyLeft;
hsp = moveH * movespeed;

var moveV = keyDown - keyUp;
vsp = moveV * movespeed;


////horizontal collision
if(place_meeting(x+hsp, y, obj_obstacle)) {
	while(!place_meeting(x+sign(hsp),y,obj_obstacle)) {
		x += sign(hsp);
	}
	hsp = 0;
	
}
x += hsp;


//horizontal collision
if(place_meeting(x, y+vsp, obj_obstacle)) {
	while(!place_meeting(x,y+sign(vsp),obj_obstacle)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

if(place_meeting(x+interactionThreshold, y+interactionThreshold, obj_mother)){
	//speak
}


//////sprite aesthetic
////if (keyRight || keyLeft) {
////	sprite_index = spr_player_run;
////	if (keyRight)  image_xscale = 1;
////	if (keyLeft)   image_xscale = -1;
////} else {
////	sprite_index = spr_player;
////}
