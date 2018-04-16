/// @description Insert description here
// You can write your code in this editor
countFrames++;
show_debug_message("frames: "+ string(countFrames))

if(countFrames == mother_glitchTimer){
	sprite_index = spr_mother_laststand;
	audio_play_sound(final_attack, 1, 0)
}

if(countFrames == mother_attackTimer){
	sprite_index = spr_mother_hurt_frontFinalWobble
}
	
	
	
if(countFrames == endscene.conversation_StartTime+100){
	endscene.print = "It is hopeless... I cannot continue.";
}

if(countFrames == endscene.conversation_StartTime+300){
	endscene.print = "Daughter, listen to me. You have to keep going. Don't stop.";
}

if(countFrames == endscene.conversation_StartTime+500){
	endscene.print = "Darling... I cannot fight anymore. This is the end of my path.";
}

if(countFrames == endscene.conversation_StartTime+600){
	endscene.print = "With my mask shattered like this, I will only hold you back.";
}

if(countFrames == endscene.conversation_StartTime+1050){
	endscene.print = "Daughter... You are so very brave.";
}

if(countFrames == endscene.conversation_StartTime+1150){
	endscene.print = "Please, be careful. Return safely to me...";
}