/// @description Insert description here
// You can write your code in this editor

meetingMother = place_meeting(x, y, obj_mother);

if(monHealth<=0){
	global.numEnemy--;
	instance_destroy();
	show_debug_message(string(global.numEnemy))
}

if(!meetingMother && !attacking){
	move_towards_point(obj_mother.x, obj_mother.y, 2)
} else {
	speed = 0;
}

if(distance_to_object(obj_mother)<50 && ableToAttack){
	ableToAttack = false; 
	attacking = true;
	alarm_set(0, 40);
} 

if(distance_to_object(obj_mother)<=30){
	path_end();
}

if(instance_exists(obj_playerSeed) && !obj_playerSeed.claimed){
	target = instance_nearest(x, y, obj_playerSeed);
	if(distance_to_object(target)<=60){
		path_end();
		if(!place_meeting(x, y, target)){
			move_towards_point(target.x, target.y, 2);
		} else{
			target.claimed = true
			speed = 0;
			ableToAttack = false;
			sprite_index = spr_enemy_front
		}
	
	}
}