/// @description Draw Text
// You can write your code in this editor
draw_self();
if(typing){
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if (blink){
		draw_text(x,y,usrName_text+"|");
	}
}
if (!blink){
	draw_text(x,y,usrName_text);
}