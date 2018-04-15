/// @description Insert description here
// You can write your code in this editor

meetingMother = place_meeting(x, y, obj_mother);

if(monHealth<=0){
	gameplay.numMonsters--;
	
	show_debug_message(string(global.numEnemy))
	instance_destroy();
}

if(!meetingMother && !attacking && !chasingSeed){
	move_towards_point(obj_mother.x, obj_mother.y, 2)
} else {
	speed = 0;
}

if(distance_to_object(obj_mother)<20 && ableToAttack && !chasingSeed){
	ableToAttack = false; 
	attacking = true;
	alarm_set(0, 40);
} 

if(distance_to_object(obj_mother)<=20){
	path_end();
}

if(instance_exists(obj_playerSeed)){
	target = instance_nearest(x, y, obj_playerSeed);	

	if(distance_to_object(target)<=60 && !target.claimed){
		path_end();
		if(!place_meeting(x, y, target)){
			move_towards_point(target.x, target.y, 2);
			chasingSeed = true;
		} else{
			target.claimed = true
			speed = 0;
			ableToAttack = false;
			attacking = false;
			sprite_index = spr_enemy_eat
			image_speed = 1;
			chasingSeed = false;
		}
	
	}
}