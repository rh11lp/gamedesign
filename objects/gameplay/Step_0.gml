// @description Insert description here
// You can write your code in this editor



if(global.game_state == 2 && global.spawnPhase != 3){
	global.spawnPhase = 1;	
	global.conversation = 1;
}

if(global.game_state == 2 && global.spawnPhase==1){
	global.spawnPhase = 3;
	for(i = 0; i<maxMonsters; i++){
		alarm_set(0, 10);
	}
}

if(global.inCombat && global.numEnemy <= 0){
	global.inCombat = false;
}
