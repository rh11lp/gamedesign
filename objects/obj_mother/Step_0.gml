/// @description Insert description here
// You can write your code in this editor

if(!paused){
	
	if(path_position == 0.25 || path_position == 0.5 || path_position == 0.75){
			show_debug_message("this should only trigger once");
			alarm[0] = room_speed*20;
			paused = 1;
			path_end();
	}
}