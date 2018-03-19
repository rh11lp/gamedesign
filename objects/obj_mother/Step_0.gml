 /// @description Insert description here
// You can write your code in this editor

curr_x = x;
curr_y = y;

//sprite aesthetic
if (curr_y < prev_y) {
 	sprite_index = spr_mother_walking;
	
}else if (curr_y > prev_y){
	sprite_index = spr_mother_back;
	
}

if(curr_x == prev_x && curr_y == prev_y){
	sprite_index = spr_mother_idle;	
} 

prev_y = curr_y;
prev_x = curr_x; 

if(path_index == -1 && global.game_state > 0 && current_gamestate != global.game_state){
	if(!(global.game_state > array_length_1d(pathsToFollow)-1)){
		show_debug_message("this should technically only happen once?");
		current_gamestate = global.game_state;
		path_start(pathsToFollow[global.game_state], 2, path_action_stop, 1);
	}
}