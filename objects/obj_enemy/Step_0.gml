/// @description Insert description here
// You can write your code in this editor

meetingMother = place_meeting(x, y, obj_mother);

if(monHealth<=0){
	global.numEnemy--;
	instance_destroy();
}

if(!meetingMother && !attacking){
	move_towards_point(obj_mother.x, obj_mother.y, 2)
} else {
	speed = 0;
}

if(distance_to_object(obj_mother)<50 && ableToAttack){
	ableToAttack = false; 
	attacking = true;
	alarm_set(0, 20);
} 

if(distance_to_object(obj_mother)<=30){
	path_end();
}

if(instance_exists(obj_playerSeed) && !obj_playerSeed.claimed){
	if(distance_to_object(obj_playerSeed)<=30){
		path_end();
		if(!place_meeting(x, y, obj_playerSeed)){
			move_towards_point(obj_playerSeed.x, obj_playerSeed.y, 2);
		} else{
			obj_playerSeed.claimed = true
		}
	
	}
}