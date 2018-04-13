/// @description Insert description here
// You can write your code in this editor
if(global.conversation){
	global.inConvo = 1;
	bubble_x = global.npcVar.x-10;
	bubble_y = global.npcVar.y-50;
	draw_set_color(c_white);
	textWidth = string_width(MotherConversation[global.conversationIndex, global.MCI])+15;
	textHeight = string_height(MotherConversation[global.conversationIndex, global.MCI])+2;
	draw_rectangle(bubble_x -  (textWidth / 2), bubble_y - (textHeight / 2), bubble_x + (textWidth / 2), bubble_y + (textHeight / 2), false);
	draw_set_color(c_black);
	draw_rectangle(bubble_x -  (textWidth / 2), bubble_y - (textHeight / 2), bubble_x + (textWidth / 2), bubble_y + (textHeight / 2), true);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(f_pixel);
	draw_text(bubble_x,bubble_y, MotherConversation[global.conversationIndex, global.MCI]);
}                   

if(global.dontWander){
	
	global.inConvo = 1;
	horMiddle = camera_get_view_x(view_camera[0]) + (view_wview[0] / 2);
	vertMiddle = camera_get_view_y(view_camera[0]) + (view_hview[0] / 2)+100;
	textWidth = string_width(MotherConversation[dontWanderID, global.MCI])+15;
	textHeight = string_height(MotherConversation[dontWanderID, global.MCI])+2;
	draw_set_color(c_white);
	draw_rectangle(horMiddle -  (textWidth / 2), vertMiddle - (textHeight / 2), horMiddle + (textWidth / 2), vertMiddle + (textHeight / 2), false)
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(f_pixel);
	draw_text(horMiddle,vertMiddle, MotherConversation[dontWanderID, global.MCI]);
}