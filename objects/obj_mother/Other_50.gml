/// @description Insert description here
// You can write your code in this editor


//IGF PLAYER TRIES TO LEAVE MOTHER, YANK HER BACK
if(global.game_state >= 1 && global.inConvo != 1){
	global.dontWander = 1;
	global.MCI = choose(0,1,2);
	current_gamestate = global.game_state;
	global.game_state = 9;
	alarm_set(0,10);
}