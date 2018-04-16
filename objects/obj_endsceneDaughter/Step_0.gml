 /// @description Insert description here
// You can write your code in this editor
if(obj_endsceneMother.countFrames == endscene.conversation_StartTime){
	endscene.print = "Mother??";
	path_start(end_daughter_1, 1, path_action_stop, 1);
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+200){
	endscene.print = "But we're so close! We can't stop now...";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+400){
	endscene.print = "I won't leave without you!";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+700){
	endscene.print = "Mother...";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+800){
	endscene.print = "...";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+900){
	endscene.print = "I will fix your mask.\nLet me find the ingredients to fix it. Let me help you!";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+1250){
	endscene.print = "Of course.";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+1350){
	sprite_index = spr_player_back;
	path_start(end_daughter_2, 1, path_action_stop, 1)
	endscene.print = "";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+1450){
	sprite_index = spr_player_idle;
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+1550){
	endscene.print = "I love you, Mother. I will make you proud!";
}

if(obj_endsceneMother.countFrames == endscene.conversation_StartTime+1650){
	sprite_index = spr_player_back;
	path_start(end_daughter_3, 2, path_action_stop, 1)
	endscene.print = "";
}

