/// @description Insert description here
// You can write your code in this editor

var net_event_type = ds_map_find_value( async_load, "type" );
show_debug_message("Event type: " + string(net_event_type))
switch( net_event_type ) {
    case network_type_data:
		show_debug_message("Reciveving DATA with IncomingData: " + string(IncomingData));
		switch (IncomingData){
			case 1: // userlist
				var buffer = ds_map_find_value( async_load, "buffer" );
				buffer_seek( buffer, buffer_seek_start, 0 );
				global.global_Username_list = buffer_read(buffer,buffer_string);
				show_debug_message("User List Recieved: " + global.global_Username_list);
				IncomingData = 0;
				userlist = false;
				break;
			case 2: //Token
				var buffer = ds_map_find_value( async_load, "buffer" );
				buffer_seek( buffer, buffer_seek_start, 0 );
				var message = buffer_read(buffer,buffer_string);
				if(message == "Invalid username/password."){
					room_goto_previous();	
				}
				else {
					global.token = message;
					obj_Client.client_Username = PlayerLoad_Username_Box.usrName_text;
					obj_Client.client_Password = PlayerLoad_Password_Box.Password_text;
				}
				show_debug_message("Token Recieved: " + global.token);
				IncomingData = 0;
				token = false;
				break;
			case 3: //Player Inforamtion
				var buffer = ds_map_find_value( async_load, "buffer" );
				buffer_seek( buffer, buffer_seek_start, 0 );
				var message = buffer_read(buffer,buffer_string);
				show_debug_message("Info Recieved: " + message);
				var ls = string_split(message, ",");
				show_debug_message("Split String 1: " + string(ds_list_find_value(ls,0)));
				obj_Client.client_Room_Level = ds_list_find_value(ls,0);
				show_debug_message("Split String 2: " + string(ds_list_find_value(ls,1)));
				obj_Client.client_Character = ds_list_find_value(ls,1);
				IncomingData = 0;
				loadchar = false;
				break;
			default:
				var buffer = ds_map_find_value( async_load, "buffer" );
				buffer_seek( buffer, buffer_seek_start, 0 );
				var ran = buffer_read(buffer,buffer_string);
				show_debug_message("Recieved: " + ran);
				if(string_pos("CHAT_RECV",ran) != 0){
					add_text_list(ran);
				}else{
					//Add something for player movements
				}
				break;
		}
		break;
}