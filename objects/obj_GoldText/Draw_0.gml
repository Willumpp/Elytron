/// @description Draw gold amount

var col = make_color_rgb(198,165,0)
draw_set_color(col);
draw_set_font(fnt_AmmoFont);
draw_set_alpha(1);
draw_text(x+sprite_width,y,string(obj_Player.gold)); //Display wave