/// @description Insert description here
// You can write your code in this editor

//IF PLAYER TRIES TO LEAVE MOTHER, YANK HER BACK
if(global.game_state == 9 && obj_player.path_index == -1 ){
	nearest = instance_nearest(obj_player.x, obj_player.y, returnpoint);
	obj_player.trigger_yoink = true;
	
}