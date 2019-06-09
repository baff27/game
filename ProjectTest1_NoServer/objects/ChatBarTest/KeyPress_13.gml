/// @description Insert description here
// You can write your code in this editor
if(visible == 0){
	visible = 1;
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	x = xx;
	y = yy+310;
	chat_typing = true;
	chat_blink = true;
	alarm[0]=25;
	keyboard_string = "";
}else{
	chat_typing = false;
	chat_blink = false;
	visible = 0;
	alarm[0] = -1;
	//Run script to check the text
	keypass_text(chat_text,obj_Player.player_room_level);
	//Send message to chat
	if(string_length(chat_text) < 1){
	}else{send_message(global.token,chat_text,obj_Player.player_username);}
	chat_text = "";
	keyboard_string = "";
	//obj_user.name = text;
}