/// @description Insert description here
// You can write your code in this editor
var level_name = obj_Client.client_Room_Level;
var index = asset_get_index(level_name);
show_debug_message("Going to level, " + level_name + ", at index: " + string(index));
room_goto(index);
alarm[1]=-1;