/// @description Insert description here
// You can write your code in this editor
show_debug_message("Inside alarm");
show_debug_message(string(current_time));
get_player_info(PlayerLoad_Username_Box.usrName_text);//Retrieve Data from Server
alarm[0] = -1;
alarm[1] = 10*room_speed;
//alarm[0] = -1;