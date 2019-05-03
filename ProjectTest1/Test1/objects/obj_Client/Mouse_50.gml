/// @description Send a click to the server
// You can write your code in this editor

instance_create_layer(mouse_x,mouse_y,Menu,obj_click);
//Write the click to buffer.
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_u8,1); //Writes our ID to an unsigned positive 8-bit integer (0-256) to our buffer. [Our Buffer looks like: 1]
buffer_write(buffer,buffer_u16,mouse_x);//Writes our mouse_x to an unsigned positive 16-Bit integer (0-65,535) to our buffer. [Our buffer looks like: 1, mouse_x]
buffer_write(buffer,buffer_u16,mouse_y); //Writes our mouse_y to an unsigned positive 16-Bit integer (0-65,535) to our buffer. [Our buffer looks like: 1, mouse_x, mouse_y]

//Send the buffer to the server
//We need to tell it which socker to connect to, which buffer to use, and what buffer size we are using.
network_send_packet(socket,buffer,buffer_tell(buffer)) //Buffer_tell is going to return the size of the buffer.