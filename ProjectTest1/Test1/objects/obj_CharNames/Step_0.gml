/// @description Insert description here
// You can write your code in this editor
if(obj_CharNames.image_index != 0){
	obj_join_game_Btn.join_game_btn_Active = true;
}
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
	default:
		obj_Client.client_Character = "";
		obj_join_game_Btn.join_game_btn_Active = false;
		break;
}
	