/// @description Draw Text
// You can write your code in this editor
draw_self()
if(typing){

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,usrName_text);
if (blink){
	str = "";
	for(i=0; i<string_length(usrName_text);i++){
		if ((string_char_at(usrName_text,i) == ("i")) || (string_char_at(usrName_text,i) == "l") || (string_char_at(usrName_text,i) == "j")){
			str +=" ";
		}else
		str += "  ";
	}
	draw_text(x,y,str+"|");
}
else
	draw_text(x,y,usrName_text);
}