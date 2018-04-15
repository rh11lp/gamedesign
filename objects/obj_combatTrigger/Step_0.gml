/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_mother) && !global.combatTrigger && global.conversationIndex != 9){
	show_debug_message("COMBAT GOOOO")
	global.combatTrigger = true;
	instance_destroy();
}

if(place_meeting(x, y, obj_mother) && !global.combatTrigger && global.conversationIndex == 9 && global.MCI == 1){
	show_debug_message("THIS IS MY FINAL FORM")
	global.combatTrigger = true;
	instance_destroy();
}