 /// @description Insert description here
// You can write your code in this editor

curr_x = x;
curr_y = y;

//sprite aesthetic

if (curr_y < prev_y){
	sprite_index = spr_mother_back;
	
}

if (curr_y > prev_y) {
 	sprite_index = spr_mother_walking;
	
}

if(curr_x == prev_x && curr_y == prev_y){
	sprite_index = spr_mother_idle;	
} 

prev_y = curr_y;
prev_x = curr_x; 

if(path_index == -1 && global.game_state > 0 && current_gamestate != global.game_state){
	if(!(global.game_state > array_length_1d(pathsToFollow)-1)){
		current_gamestate = global.game_state;
		path_start(pathsToFollow[global.game_state], 2, path_action_stop, 1);
	}
}



if(instance_exists(obj_enemy)){
	target = instance_nearest(x, y, obj_enemy);
	if(distance_to_object(target)<=30 && ableToAttack){
		global.inCombat = true;
		ableToAttack = false;
		alarm_set(1, 20);
	}
}
