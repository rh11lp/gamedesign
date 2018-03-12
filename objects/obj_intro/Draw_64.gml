/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_pixel,0,0,0,1024, 150, 0, c_black, 1);
draw_sprite_ext(spr_pixel,0,0,618,1024, 150, 0, c_black, 1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_pixel);
draw_text(512, 670, print);

//draw rectangle.... this is cheaper than draw_rectangle apparently
draw_sprite_ext(spr_pixel,0,0,0,1024, 768, 0, c_black, a);
