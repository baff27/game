/// @description Insert description here
// You can write your code in this editor
var CurrentRoom = obj_Player.player_room_level;
var indexRoom = noone;
if(sprite_index == magic_Door_Open and place_meeting(x,y-15,obj_Player)){
	switch(CurrentRoom){
		case "Level_1":
			indexRoom = asset_get_index("Level_2");
			show_debug_message("In side switch statement\nGoing to");
			room_goto(indexRoom);
			break;
		case "Level_2":
			indexRoom = asset_get_index("Level_3");
			room_goto(indexRoom);
			break;
		case "Level_3":
			indexRoom = asset_get_index("Level_4");
			room_goto(indexRoom);
			break;
		case "Level_4":
			indexRoom = asset_get_index("Level_Final");
			room_goto(indexRoom);
			break;
	}
}