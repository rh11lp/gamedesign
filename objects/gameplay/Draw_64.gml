// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_pixel);
draw_text(view_xview[0] + 32, view_yview[0] + 32, string(global.seeds));
//draw_sprite(spr_seed, 0, view_xview[0] - 32, view_yview[0] - 32);