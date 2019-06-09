var socket = obj_Client.socket;
var buffer = obj_Client.buffer;
var Username = argument[0];
var Password = argument[1];
var Character = argument[2];
var Room_Level = argument[3];
//User first
//Pass Second
//Current Token (Send anything)
//Room Number
//Character Name
var createAcc = "CREATE_ACCOUNT";
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_string,createAcc+",");//Writes command to create an account
buffer_write(buffer,buffer_string,string_upper(Username)+",");//Username
buffer_write(buffer,buffer_string,Password+",");//Password
buffer_write(buffer,buffer_string,"666,");//Current Token
buffer_write(buffer,buffer_string,Room_Level+",");//Room Level
buffer_write(buffer,buffer_string,Character);//Character
//buffer_write(buffer,buffer_string,"\n");
network_send_raw(socket,buffer,buffer_tell(buffer));//Send to the server
//var recBuffer = obj_Client.recBuffer;//Create a temporary buffer.
//buffer_seek(recBuffer,buffer_seek_start,0); // Looks at the beginning of the buffer.
//var name_list = buffer_read(buffer,buffer_string);//Start Receiving information
obj_Client.token = true;
obj_Client.userlist = false;
obj_Client.loadchar = false;
show_debug_message("Sent: " + createAcc + Username + Password + "666" + Room_Level + Character);
