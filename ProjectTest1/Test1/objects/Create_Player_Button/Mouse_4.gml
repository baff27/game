/// @description Change to Character Creation Room
// You can write your code in this editor
//Create object instance or something here
var index = asset_get_index("Character_Creation");
room_goto(index);
instance_create_layer(0,0,Character_Creation,obj_Client);