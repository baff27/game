/// @description Initializing Clients
// You can write your code in this editor
var type = network_socket_tcp; //Defining Socket
//var ip = get_string("Server: ","");
var ip = "99.8.88.54"
var port = 25565; //Port to connect through
socket = network_create_socket(type);
global.global_Username_list = ds_list_create();
//Uncomment this later
//connection = network_connect_raw(socket,ip,port); //Creates a connection to our socket, server, and port

//Send Information to the Server.
var size = 1024; //Has a size of 1KB
var bufferType = buffer_fixed //Defines a Fixed buffer
var alignment = 1; //Sets alignment to 1, commonly used for strings.
buffer = buffer_create(size,bufferType,alignment);//Creates buffer

client_Username = "";
client_Password = "";
client_Character = noone;
client_Room_Level = "";

//Create Lists of sprites for character creation
global.CronoSpriteList = ds_list_create();
ds_list_add(global.CronoSpriteList,Crono_LeftFace);
ds_list_add(global.CronoSpriteList,Crono_LeftFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_RightFace);
ds_list_add(global.CronoSpriteList,Crono_RightFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_UpFace);
ds_list_add(global.CronoSpriteList,Crono_UpFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_DownFace);
ds_list_add(global.CronoSpriteList,Crono_DownFace_Walking);
global.IncognitoSpriteList = ds_list_create();
ds_list_add(global.IncognitoSpriteList,Incognito_LeftFace);
ds_list_add(global.IncognitoSpriteList,Incognito_RightFace);
ds_list_add(global.IncognitoSpriteList,Incognito_UpFace);
ds_list_add(global.IncognitoSpriteList,Incognito_DownFace);
global.BlueShieldSpriteList = ds_list_create();
ds_list_add(global.BlueShieldSpriteList,BlueSheild_LeftFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_RightFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_UpFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_DownFace);
global.GremlinSpriteList = ds_list_create();
ds_list_add(global.GremlinSpriteList,Gremlin_LeftFace);
ds_list_add(global.GremlinSpriteList,Gremlin_LeftFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_RightFace);
ds_list_add(global.GremlinSpriteList,Gremlin_RightFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_UpFace);
ds_list_add(global.GremlinSpriteList,Gremlin_UpFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_DownFace);
ds_list_add(global.GremlinSpriteList,Gremlin_DownFace_Walking);
global.RatSpriteList = ds_list_create();
ds_list_add(global.RatSpriteList,Rat_LeftFace);
ds_list_add(global.RatSpriteList,Rat_LeftFace_Walking);
ds_list_add(global.RatSpriteList,Rat_RightFace);
ds_list_add(global.RatSpriteList,Rat_RightFace_Walking);
ds_list_add(global.RatSpriteList,Rat_UpFace);
ds_list_add(global.RatSpriteList,Rat_UpFace_Walking);
ds_list_add(global.RatSpriteList,Rat_DownFace);
ds_list_add(global.RatSpriteList,Rat_DownFace_Walking);
global.RoboSpriteList= ds_list_create();
ds_list_add(global.RoboSpriteList,Robo_LeftFace);
ds_list_add(global.RoboSpriteList,Robo_LeftFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_RightFace);
ds_list_add(global.RoboSpriteList,Robo_RightFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_UpFace);
ds_list_add(global.RoboSpriteList,Robo_UpFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_DownFace);
ds_list_add(global.RoboSpriteList,Robo_DownFace_Walking);
global.NuSpriteList = ds_list_create();
ds_list_add(global.NuSpriteList,Nu_LeftFace);
ds_list_add(global.NuSpriteList,Nu_LeftFace_Walking);
ds_list_add(global.NuSpriteList,Nu_RightFace);
ds_list_add(global.NuSpriteList,Nu_RightFace_Walking);
ds_list_add(global.NuSpriteList,Nu_UpFace);
ds_list_add(global.NuSpriteList,Nu_UpFace_Walking);
ds_list_add(global.NuSpriteList,Nu_DownFace);
ds_list_add(global.NuSpriteList,Nu_DownFace_Walking);
global.FrogSpriteList = ds_list_create();
ds_list_add(global.FrogSpriteList,Frog_LeftFace);
ds_list_add(global.FrogSpriteList,Frog_LeftFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_RightFace);
ds_list_add(global.FrogSpriteList,Frog_RightFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_UpFace);
ds_list_add(global.FrogSpriteList,Frog_UpFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_DownFace);
ds_list_add(global.FrogSpriteList,Frog_DownFace_Walking);