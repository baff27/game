/// @description Insert description here
// You can write your code in this editor
if(obj_join_game_Btn.image_index == 0){
	if(room == asset_get_index("Player_Load")){
		//get_player_info(Username_Box.usrName_text,Password_Box.Password_text);//Retrieve Data from Server
		show_debug_message("Player Data being retrieved from Server at some point, \n\tScript does nothing yet");
		obj_Client.client_Room_Level = "Menu";//For Local Testing Purposes
	}else{
		//send_player_info(obj_Client.client_Username,obj_Client.client_Password,obj_Client.client_Character,obj_Client.client_Room_Level);	
		show_debug_message("Player Data Sent to Server at some point, \n\tScript does nothing yet");
	}
	var level_name = obj_Client.client_Room_Level;
	var index = asset_get_index(level_name);
	show_debug_message("Going to level, " + level_name + ", at index: " + string(index));
	room_goto(index);
}