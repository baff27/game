//UPDATE_CORDS,token,x,y,sprite
var msgID = "UPDATE_CORDS";
var token = argument[0];
var xpos = string(argument[1]);
var ypos = string(argument[2]);
var pSprite = string(argument[3]);
var socket = obj_Client.socket;
var buffer = obj_Client.buffer;
/*
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_string,msgID+",");//Writes command to update position
buffer_write(buffer,buffer_string,string(token)+",");//token
buffer_write(buffer,buffer_string,xpos+",");//x positon
buffer_write(buffer,buffer_string,ypos+",");//y positon
buffer_write(buffer,buffer_string,pSprite);//Sprite
//buffer_write(buffer,buffer_string,"\n");
network_send_raw(socket,buffer,buffer_tell(buffer));//Send to the server
//var recBuffer = obj_Client.recBuffer;//Create a temporary buffer.
//buffer_seek(recBuffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
//var name_list = buffer_read(buffer,buffer_string);//Start Receiving information*/
show_debug_message("Sent: PLayer location");