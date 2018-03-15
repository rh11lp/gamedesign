/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
	global.seeds++;
	audio_play_sound(collect_seed, 1, 0);
	instance_destroy();
}