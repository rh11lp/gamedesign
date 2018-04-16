/// @description Insert description here
// You can write your code in this editor
if(obj_endsceneMother.countFrames >= obj_endsceneMother.mother_glitchTimer + 5 && !blastOff){
	sprite_index = spr_enemy_jitter;
	if (random(30) >= 29) {
	   blastOff = true;
	}
}

if(blastOff || obj_endsceneMother.countFrames >= obj_endsceneMother.mother_attackTimer - 10){
	sprite_index = spr_enemy_front;
	x+=6;
	if(y < 770){
		y-= 4;
	} else {
		y+= 4;
	}
		
	
}