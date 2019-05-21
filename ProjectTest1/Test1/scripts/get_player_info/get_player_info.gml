var Username = argument[0];
var Password = argument[1];
var buffer = obj_Client.buffer;
var socket = obj_Client.socket;
buffer_seek(buffer,buffer_seek_start,0);//Checks the beginning of the buffer
buffer_write(buffer,buffer_u8,9);//Writes our ID for account check
buffer_write(buffer,buffer_string,Username);//Writes the Username to buffer
buffer_write(buffer,buffer_string,Password);//Writes the password Hash to buffer
network_send_packet(socket,buffer,buffer_tell(buffer));