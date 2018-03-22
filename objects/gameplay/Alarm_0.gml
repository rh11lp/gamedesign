/// @description Insert description here
// You can write your code in this editor
instance_create_depth(obj_mother.x+90, obj_mother.y-40, 2, obj_enemy);
numMonsters++;

if(numMonsters==maxMonsters){
	global.game_state++;
	global.conversation = 0;
} else{
	alarm_set(0, 10);
}