/// @description Insert description here
// You can write your code in this editor
if(obj_join_game_Btn.image_index == 0){
	switch(obj_CharNames.image_index){
		case 1:
			obj_Client.client_Character = "Crono";
			break;
		case 2:
			obj_Client.client_Character = "Blue Shield";
			break;
		case 3:
			obj_Client.client_Character = "Incognito";
			break;
		case 4:
			obj_Client.client_Character = "Gremlin";
			break;
		case 5:
			obj_Client.client_Character = "Rat";
			break;
		case 6:
			obj_Client.client_Character = "Robo";
			break;
		case 7:
			obj_Client.client_Character = "Nu";
			break;
	}
	obj_Client.client_Room_Level = "0";
	var index = asset_get_index("Level_1");
	room_goto(index);
}