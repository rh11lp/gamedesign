/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_mother_idleEnd){
	sprite_index = spr_mother_hurt_frontFinal;	
}
if(sprite_index == spr_mother_laststand){
	numBlasts++;
	if(numBlasts >= 5){
		sprite_index = spr_mother_hurt_frontFinal;	
		audio_play_sound(shortGlitch, 1, 0)
	}
}
if(sprite_index == spr_mother_hurt_frontFinalWobble){
	sprite_index = spr_mother_sit;
}