/// @description Insert description here
// You can write your code in this editor
var CurrentRoom = obj_Player.player_room_level;
var indexRoom = noone;
if(sprite_index == magic_Door_Open and place_meeting(x,y-15,obj_Player)){
	switch(CurrentRoom){
		case "Level_1":
			indexRoom = asset_get_index("Level_2");
			show_debug_message("Send updated player level to server");
			room_goto(indexRoom);
			obj_Player.player_room_level = "Level_2";
			//Set player object to new starting location
			//obj_Player.x = Level_2.xstart;
			//obj_Player.y = Level_2.ystart;
			break;
		case "Level_2":
			indexRoom = asset_get_index("Level_1");
			room_goto(indexRoom);
			break;
		case "Level_3":
			indexRoom = asset_get_index("Level_1");
			room_goto(indexRoom);
			break;
	}
}