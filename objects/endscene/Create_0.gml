/// @description Insert description here
// You can write your code in this editor
randomize();

numEnemy = 6;
monsterStartX = 627;
monsterStartY = 708;
monsterDepth = numEnemy;
for(i = 0; i < numEnemy; i++){
	instance_create_depth(monsterStartX, monsterStartY, monsterDepth, obj_endsceneMonster);
	monsterStartX+=10;
	monsterStartY+=20;
	monsterDepth-=1;
}

print = "";

conversation_StartTime = 400;

fadeToEnd = false;


a = 0; //alpha transparency of fadeout/fadein