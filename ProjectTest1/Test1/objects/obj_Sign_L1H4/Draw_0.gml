/// @description Insert description here
// You can write your code in this editor
draw_self();
if(close){
	draw_set_color(c_white);
	draw_set_font(font_chat);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_transformed(xx+256,yy+160,"Press \"E\" to Read the Sign",-1,300,0.5,0.5,0);
}
if(close and global.e_state and !ChatBarTest.chat_typing){
	global.signCol = make_color_hsv(18,63,36);
	draw_set_color(global.signCol);
	draw_rectangle(xx+64,yy+40,xx+448,yy+280,false);
	draw_set_color(c_black);
	draw_set_font(fontSign);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var str2 = "___ Season";
	draw_text(xx+256,yy+160,str2);
}