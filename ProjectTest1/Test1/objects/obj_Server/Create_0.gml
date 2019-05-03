/// @description Server
// You can write your code in this editor
var type = network_socket_tcp;
var port = 25653;
max_clients = 30;
server = network_create_server(type,port,max_clients);
socket = ds_list_create();
user_list = ds_list_create();