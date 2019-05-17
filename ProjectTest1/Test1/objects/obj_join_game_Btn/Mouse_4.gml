/// @description Insert description here
// You can write your code in this editor
if(obj_join_game_Btn.image_index == 0){
	obj_Client.client_Room_Level = "0";
	var index = asset_get_index("Level_1");
	room_goto(index);
}