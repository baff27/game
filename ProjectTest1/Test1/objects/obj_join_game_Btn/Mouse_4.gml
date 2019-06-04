/// @description Insert description here
// You can write your code in this editor
if(obj_join_game_Btn.image_index == 0){
	if(room == asset_get_index("Player_Load")){
		login(PlayerLoad_Username_Box.usrName_text,PlayerLoad_Password_Box.Password_text);//Attempt to login
		show_debug_message("After Login Script");
		/*
		
		Implement a loading screen or wiat functions of somekind here, because the token being recieved is 
		coming later than we need it to be
		
		
		
		
		*/
		get_player_info(PlayerLoad_Username_Box.usrName_text);//Retrieve Data from Server
		show_debug_message("Player Data being retrieved from Server at some point, \n\tScript does nothing yet");
		obj_Client.client_Room_Level = "Level_2";//For Local Testing Purposes
	}else{
		send_player_info(obj_Client.client_Username,obj_Client.client_Password,obj_Client.client_Character,obj_Client.client_Room_Level);	
		//login(obj_Client.client_Username,obj_Client.client_Password);
		//obj_Client.token = true;
		//show_debug_message("Player Data Sent to Server at some point, \n\tScript does nothing yet");
	}
	var level_name = obj_Client.client_Room_Level;
	var index = asset_get_index(level_name);
	show_debug_message("Going to level, " + level_name + ", at index: " + string(index));
	room_goto(index);
}