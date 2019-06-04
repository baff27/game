var socket = obj_Client.socket;
var buffer = obj_Client.buffer;
var Username = argument[0];
var Password = argument[1];
//User first
//Pass Second
var loginID = "LOGIN";
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_string,loginID+",");//Writes command to create an account
buffer_write(buffer,buffer_string,Username+",");//Username
buffer_write(buffer,buffer_string,Password);//Password
//buffer_write(buffer,buffer_string,"\n");
network_send_raw(socket,buffer,buffer_tell(buffer));//Send to the server
obj_Client.token = true;
obj_Client.loadchar = false;
obj_Client.userlist = false;
//var recBuffer = obj_Client.recBuffer;//Create a temporary buffer.
//buffer_seek(recBuffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
//var name_list = buffer_read(buffer,buffer_string);//Start Receiving information
show_debug_message("Sent: " + loginID + "\t" + Username + "\t" + Password);
