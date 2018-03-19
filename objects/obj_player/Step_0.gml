//movement input
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
interact = keyboard_check(ord("E"));

meetingMother = place_meeting(x+4, y+4, obj_mother) || place_meeting(x-4, y-4, obj_mother)
 
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


//vertical collision
if(place_meeting(x, y+vsp, obj_obstacle)) {
	while(!place_meeting(x,y+sign(vsp),obj_obstacle)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//mother speaks to daughter
if(meetingMother && global.inConvo != 1){
	
	if(global.seeds == 0){
		global.MCI = 3;	
	}
	global.conversation = 1;
	global.npcVar = obj_mother;
	
}

//interact with mother
if(interact && !global.wasInteracting && global.inConvo && meetingMother)
{
	if(global.MCI < global.MotherConvoLength-1){
		global.MCI++;
		show_debug_message("MCI "+string(global.MCI));
		global.wasInteracting = interact;
		alarm_set(0, 8); 
	}else{
		global.conversation = 0;	
		global.game_state++;
	}
}



//////sprite aesthetic
////if (keyRight || keyLeft) {
////	sprite_index = spr_player_run;
////	if (keyRight)  image_xscale = 1;
////	if (keyLeft)   image_xscale = -1;
////} else {
////	sprite_index = spr_player;
////}
