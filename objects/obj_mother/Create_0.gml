/// @description Insert description here
// You can write your code in this editor
pathsToFollow = [intro_first, intro_second, intro_third, intro_fourth];

path_start(intro_first, 2, path_action_stop, 1);

paused = 0;


curr_x = 0;
curr_y = 0;

prev_x = 0;
prev_y = 0;

current_gamestate = 0;  
triggerIntersect = 0;


momHealth = 30;
momDamage = 5;
ableToAttack = true;
var target;