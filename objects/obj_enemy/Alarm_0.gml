/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_enemy_attack;
image_speed = 1;
obj_mother.momHealth-=monDamage;
obj_mother.sprite_index = spr_mother_hurt_front;
ableToAttack = true;
attacking = false;