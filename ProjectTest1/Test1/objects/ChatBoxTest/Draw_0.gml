/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_messages);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var string_h = 0;
for(var n=0;n<ds_list_size(global.m_list);n++){
	var str = ds_list_find_value(global.m_list,n);
	string_h += string_height(str)/2;
	draw_text_ext_transformed(x,y+string_h,str,-1,426,0.5,0.5,0);
}