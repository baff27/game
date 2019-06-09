/// @description Insert description here
// You can write your code in this edi
var level_name = "Menu";
var index = asset_get_index(level_name);
show_debug_message("Going to level, " + level_name + ", at index: " + string(index));
room_goto(index);