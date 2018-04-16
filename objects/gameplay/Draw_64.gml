 // @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_pixel);

draw_text(35, 15, string(global.seeds));
draw_sprite(spr_seed, 0, 15, 15);

draw_text(100, 15, string(obj_mother.momHealth)+"/30");
draw_sprite(spr_mother_portrait, 0, 70, 15);

if(global.fadeToNext){
	//draw rectangle.... this is cheaper than draw_rectangle apparently
	draw_sprite_ext(spr_pixel,0,0,0,1024, 768, 0, c_black, a);
}
