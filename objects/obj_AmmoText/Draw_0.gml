/// @description Display ammo

draw_set_color(c_black);
draw_set_font(fnt_AmmoFont);
draw_set_alpha(1);
draw_text(x+sprite_width,y,string(obj_Player.ammo)); //Display wave