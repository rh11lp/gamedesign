/// @description steps
// You can write your code in this editor

if(global.combatTrigger && !spawnTriggered){
	global.combatTrigger = false;
	spawnTriggered = 1;
	alarm_set(1, 10)
}

if(global.spawnPhase==1){
	if(numMonsters < maxMonsters){
		global.spawnPhase = 3;
		alarm_set(0, 10);
	}
}

if(global.inCombat && numMonsters <= 0){
	global.inCombat = false;
	global.skippingConvo = false;
	spawnTriggered = 0;
	global.spawnPhase = 0;
	global.combatTrigger = false;
}

//FADE TO NEXT ROOM
if(global.fadeToNext){
	show_debug_message("QUEUE FADEOUT")

	a = min(a+0.009,1);

	if (a >= 0.05 && !triggerMusic){
		triggerMusic = true;
		audio_stop_sound(gameplay_track); audio_play_sound(end_theme, 1, 0);
	}

	if (a==1) { room_goto_next(); }
}