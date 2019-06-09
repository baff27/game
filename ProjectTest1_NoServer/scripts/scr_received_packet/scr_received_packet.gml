///scr_WAN_received_packet(buffer)
var buffer = argument[0]; //Gets our input value when we execute the script [What our buffer will look like: 1,mouse_x,mouse_y]
var message_id = buffer_read(buffer,buffer_u8); //Reads our Unsigned 8Bit Integer from our buffer. [What our buffer will look like: mouse_x,mouse_y] We remove the 1 because when a buffer reads information, it removes that id from the buffer.

//You set which buffer ID you want to send information with. Maybe buffer id 1 sends mouse_x and mouse_y, id 2 sends Damage, id 3 sends health, etc.
switch(message_id) {
	case 0: //If our message ID is equal to 0.
		var incoming_User = buffer_read(buffer,buffer_string);
		ds_list_add(user_list,incoming_User);
		ds_list_add(global.global_Username_list,incoming_User);
		server_update_users();
    case 1: //If our message ID is equal to 1.
        var mx = buffer_read(buffer,buffer_u16); //Reads our unsigned 16 Bit Integer from our buffer and assigns it to the variable mx. [Buffer equals: mouse_y] -We deleted our mouse_x from the buffer upon reading it
        var my = buffer_read(buffer,buffer_u16); //Reads our unsigned 16 Bit Integer from our buffer and assigns it to the variable my. [Buffer equals:] -We deleted out mouse_y from the buffer upon reading it.
        //Create the click instance on our server
		instance_create_layer(mx,my,Menu,obj_click);
        break;
	case 8: //If the ID message is equal to 8, Send the global list to the client
		//send_global_list_to_client();//Do something here
		break;
	case 9://Check if password matches Hash
		var usernameCon = buffer_read(buffer,buffer_string); // Reads our Username string from buffer
		var passwordCon = buffer_read(buffer,buffer_string); // Reads our Password String from buffer
		for(i=0;i<ds_list_size(global.global_Username_list);i++){
			if(usernameCon == ds_list_find_value(global.global_Username_list,i)){
				//Check for Password hash to match corrisponding player file
				//Do something here
			
			break;
			}else{
				//Send An error message back to host
			}
		}
}
