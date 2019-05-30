/// @description Draw Text
// You can write your code in this editor
draw_self()
if(chat_typing){
	draw_set_font(font_chat);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	if (chat_blink){
		if(string_width(chat_text) > 212){
			var chatTextOffset = string_width(chat_text)-212;
			draw_text(x+1-chatTextOffset,y,chat_text+"|");
		}else{
			draw_text(x+1,y,chat_text+"|");
		}
	}
}
if (!chat_blink){//This should be unnecessary because it will be sending it to the server/keypassCheck
	if(string_width(chat_text) > 212){
			var chatTextOffset = string_width(chat_text)-212;
			draw_text(x+1-chatTextOffset,y,chat_text);
		}else{
			draw_text(x+1,y,chat_text);
		}
	//Send Text to chat draw_text(x,y,chat_text);
	//chat_text = "";
}