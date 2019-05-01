/// @description Checking for Clients and Data
// You can write your code in this editor
var type_event = async_load[? "type"]; //Grabbing the type from async_load using an accessor, then store that value in type_event
switch(type_event){
	case network_type_connect: //If player tries to connect, type_event will be network_type_connect. Makes sense
		//Add Clients to the socket list
		ds_list_add(socket,async_load[? "socket"]);
		break;
	case network_type_disconnect: //If someone disconnects
		//Remove Client from the socket list
		position = ds_list_find_index(socket,async_load[? "socket"]); //Locate player in the Socket List
		ds_list_delete(socket,position); //Delete player from the socket list
		break;
	case network_type_data: //If we are receiving data
		//Handle the data
		var buffer = async_load[? "buffer"];//Create a temporary buffer.
		buffer_seek(buffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
		scr_received_packet(buffer);//Executes a script scr_recieved_packet, and pass buffer to it
		break;
	}