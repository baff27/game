/// @description Insert description here
// You can write your code in this editor
if(obj_Char_Sel_Menu_Btn.image_index == 0){
	obj_Client.client_Username = Username_Box.usrName_text;
	obj_Client.client_Password = Password_Box.Password_text;
	var index = asset_get_index("Character_Selection_Menu");
	room_goto(index);
}