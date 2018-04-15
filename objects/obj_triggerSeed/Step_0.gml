/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
	global.seeds++;
	audio_play_sound(collect_trigger, 1, 0);
	gameplay.maxMonsters+= 3;
	show_debug_message("gamestate"+string(global.game_state));
	instance_destroy();
}
