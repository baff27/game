/// @description Insert description here
// You can write your code in this editor
if(visible == 0){
	visible = 1;
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	x = xx;
	y = yy+315;
	chat_typing = true;
	keyboard_string = "";
}else{
	chat_typing = false;
	chat_blink = false;
	visible = 0;
	alarm[0] = -1;
	//Send message to chat
	//obj_user.name = text;
}