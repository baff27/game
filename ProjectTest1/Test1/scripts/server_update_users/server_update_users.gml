///@description Update user list on server

//Write a buffer with the new user
var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);

buffer_write(buffer, buffer_u16, 10);

//convert user_list to string and write
var str = ds_list_write(user_list);
buffer_write(buffer, buffer_string, str);


//send to all clients
var size = ds_list_size(socket);
for (i=0 ; i<size ; i++)
{
network_send_packet(ds_list_find_value(socket,i), buffer, buffer_tell(buffer));
}