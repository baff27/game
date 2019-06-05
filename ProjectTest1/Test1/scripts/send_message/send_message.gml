var token = argument[0];
var mess = argument[1];
var user = argument[2];
var socket = obj_Client.socket;
var buffer = obj_Client.buffer;
//CHAT
//TOKEN
//Message
var trig = "CHAT";
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_string,trig+",");//Writes command to send a message
buffer_write(buffer,buffer_string,string(token)+",");//token
buffer_write(buffer,buffer_string,mess);//message
//buffer_write(buffer,buffer_string,"\n");
network_send_raw(socket,buffer,buffer_tell(buffer));//Send to the server
var temp = "<"+string_upper(user)+">"+" "+mess;
add_text_list(temp);
//var recBuffer = obj_Client.recBuffer;//Create a temporary buffer.
//buffer_seek(recBuffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
//var name_list = buffer_read(buffer,buffer_string);//Start Receiving information
show_debug_message("Sent: " + string(token) + " | " +  mess);