/// @description Draw Shield Health

var col = make_color_rgb(0,190,225)
draw_set_color(col);
draw_set_font(fnt_AmmoFont);
draw_set_alpha(1);
draw_text(x+sprite_width,y,string(shieldHealth)); //Display health