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
        var buffer = ds_map_find_value( async_load, "buffer" );
        buffer_seek( buffer, buffer_seek_start, 0 );
        var hello = buffer_read(buffer,buffer_string);
		show_debug_message("Recieved: " + hello);
        break;
}