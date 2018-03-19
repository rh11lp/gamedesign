/// @description Insert description here
// You can write your code in this editor
if(global.conversation){
	
	global.inConvo = 1;
	bubble_x = global.npcVar.x-10;
	bubble_y = global.npcVar.y-50;
	horMiddle = view_xview[0] + (view_wview[0] / 2);
	vertMiddle = view_yview[0] + (view_hview[0] / 2);
	draw_set_color(c_white);
	textWidth = string_width(MotherConversation[global.MCI])+15;
	textHeight = string_height(MotherConversation[global.MCI])+2;
	draw_rectangle(bubble_x -  (textWidth / 2), bubble_y - (textHeight / 2), bubble_x + (textWidth / 2), bubble_y + (textHeight / 2), false);
	draw_set_color(c_black);
	draw_rectangle(bubble_x -  (textWidth / 2), bubble_y - (textHeight / 2), bubble_x + (textWidth / 2), bubble_y + (textHeight / 2), true);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(f_pixel);
	draw_text(bubble_x,bubble_y, MotherConversation[global.MCI]);

}                   