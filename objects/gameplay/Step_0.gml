// @description Insert description here
// You can write your code in this editor

if(global.combatTrigger && !spawnTriggered){
	global.combatTrigger = false;
	spawnTriggered = 1;
	alarm_set(1, 10)
}

if(global.spawnPhase==1){
	show_debug_message("WHAT"+string(numMonsters)+", "+string(maxMonsters))
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