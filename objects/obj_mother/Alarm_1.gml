/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_mother_attack;
if(instance_exists(target)){
	show_debug_message("ding ding ding")
	target.monHealth-=momDamage;
}
ableToAttack = true;
sprite_index = spr_mother_attack;
