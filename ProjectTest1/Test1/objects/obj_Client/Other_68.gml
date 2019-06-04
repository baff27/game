/// @description Insert description here
// You can write your code in this editor
/*
var type_event = async_load[? "type"]; //Grabbing the type from async_load using an accessor, then store that value in type_event
if(type_event == network_type_data){ //If we are receiving data
	recBuffer = async_load[? "buffer"];//Create a temporary buffer.
}*/
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
				IncomingData = 0;
				loadchar = false;
				break;
			default:
				var buffer = ds_map_find_value( async_load, "buffer" );
				buffer_seek( buffer, buffer_seek_start, 0 );
				var ran = buffer_read(buffer,buffer_string);
				show_debug_message("Recieved: " + ran);
				break;
		}
		break;
}