var socket = obj_Client.socket;
var buffer = obj_Client.buffer;
var sendID = "NAME_LIST"; //Value we are sending to the server
name_list = "";
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_string,sendID);//Writes our ID for global Client List
//buffer_write(buffer,buffer_string,"\n");
network_send_raw(socket,buffer,buffer_tell(buffer));//Send to the server
//var recBuffer = obj_Client.recBuffer;//Create a temporary buffer.
//buffer_seek(recBuffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
//var name_list = buffer_read(buffer,buffer_string);//Start Receiving information
show_debug_message("Sent: " + sendID);