/// @description Insert description here
// You can write your code in this editor
draw_self();
if(close){
	draw_set_color(c_white);
	draw_set_font(font_chat);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx+256,yy+160,"Hold \"E\" to Read the Sign");
}
if(close and keyboard_check(ord("E")) and !ChatBarTest.chat_typing){
	signCol = make_color_hsv(18,63,36);
	draw_set_color(signCol);
	draw_rectangle(xx+64,yy+40,xx+448,yy+280,false);
	draw_set_color(c_black);
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx+256,yy+160,"This is a clue");
}