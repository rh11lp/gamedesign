/// @description Insert description here
// You can write your code in this editor


if(global.game_state == 9 && obj_player.path_index == -1 ){
	global.daughter_correct = path_add();
	nearest = instance_nearest(obj_player.x, obj_player.y, returnpoint);
	with (obj_player) {
		if (point_distance(x, y, obj_mother.nearest.x, obj_mother.nearest.y) > 5) {
			move_towards_point(obj_mother.nearest.x, obj_mother.nearest.y, 2);
	   } else {
		   speed = 0;
	   }
	}
}