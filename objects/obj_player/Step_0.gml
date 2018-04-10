//movement input
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
interact = keyboard_check_pressed(ord("E"));


meetingMother = place_meeting(x, y, obj_mother) || place_meeting(x-4, y-4, obj_mother)
 
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

//daughter initiates conversation
if(meetingMother && !global.inConvo && interact && !global.inCombat){
	
	if(global.game_state == 0 && global.seeds == 0){
		global.MCI = 3;	
	}
	global.conversation = 1;
	global.npcVar = obj_mother;
	
}

//continue conversation
if(interact && global.inConvo && meetingMother){
	if(global.MCI < global.MotherConvoLength-1 ){
		global.MCI++;
	}else if(global.MCI == global.MotherConvoLength-1){
		global.conversation = 0;	
		global.game_state++;
		show_debug_message("game_state "+string(global.game_state));
		global.MCI = 0;
		global.inConvo = 0;
		global.MotherConvoLength = array_length_2d(gameplay.MotherConversation, global.game_state); 
		
	}
}
		
// GET PULLED IN WITH MOTHER
if(global.game_state == 1 && path_index == -1){
	if(path_position != 1){
		path_start(intro_daughter_follow, 1, path_action_stop, 0);
	}
}

if(trigger_yoink){
	if (point_distance(x, y, obj_mother.nearest.x, obj_mother.nearest.y) > 5) {
		move_towards_point(obj_mother.nearest.x, obj_mother.nearest.y, 2);
	} else {
		speed = 0;
		trigger_yoink = false;
		global.dontWander = 0;
		global.MCI = 0;
		global.inConvo = 0;
		global.game_state = obj_mother.current_gamestate;
	}
}

if(global.seeds > 0){
	
	if(global.inCombat){
		switch(directionStand){
			case 1:
				incX = 0; incY = -40; break;
			case 2:
				incX = 0; incY = 40; break;
			case 3:
				incX = 40; incY = 0; break;
			case 4:
				incX = -40; incY = 0; break;
		}
		//draw reticle
		if(!instance_exists(obj_reticle)){
			instance_create_depth(x+incX, y+incY, 1, obj_reticle);
		}
		if(interact){
			instance_create_depth(x+incX, y+incY, 1, obj_playerSeed);
			global.seeds--;
		}
	}
}
/***************************************************************************************/

//sprite aesthetic
if (keyUp) {
	last_key = "up";
	sprite_index = spr_player_back;
	image_xscale = 1;
	directionStand = 1;
	
}else if (keyDown){
	sprite_index = spr_player;
	image_xscale = 1;
	last_key = "down";
	directionStand = 2;
	
} else if (keyLeft || keyRight){
	sprite_index = spr_player_side;
	if (keyRight)  image_xscale = 1; last_key = "right"; directionStand = 3;
	if (keyLeft)   image_xscale = -1; last_key = "left "; directionStand = 4;
}
else {
	sprite_index = spr_player_idle;
	image_xscale = 1;
}