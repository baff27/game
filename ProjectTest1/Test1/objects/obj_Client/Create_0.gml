/// @description Initializing Clients

var type = network_socket_tcp; //Defining Socket
var ip = "99.8.88.54" //Server IP
var port = 25565; //Port to connect through
socket = network_create_socket(type);

//Uncomment this later
//connection = network_connect_raw(socket,ip,port); //Creates a connection to our socket, server, and port


//Buffer information for sending Data
//===================================
var size = 1024;	//Has a size of 1KB

var bufferType = buffer_fixed	//Defines a Fixed buffer

var alignment = 1;	//Sets alignment to 1, commonly used for strings.

buffer = buffer_create(size,bufferType,alignment);	//Creates buffer



//Global variables / Important lists and Variables
//==================================
global.global_Username_list = ds_list_create();
global.token = noone;
IncomingData = 0;//0 default anything; 1 userlist; 2 token
token = false;
userlist = false;
loadchar = false;
client_Username = "";
client_Password = "";
client_Character = noone;
client_Room_Level = "";


//Create Lists of sprites for character creation
//==============================================
global.CronoSpriteList = ds_list_create();
global.CronoSpriteText = ds_list_create();
ds_list_add(global.CronoSpriteList,Crono_LeftFace);
ds_list_add(global.CronoSpriteList,Crono_LeftFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_RightFace);
ds_list_add(global.CronoSpriteList,Crono_RightFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_UpFace);
ds_list_add(global.CronoSpriteList,Crono_UpFace_Walking);
ds_list_add(global.CronoSpriteList,Crono_DownFace);
ds_list_add(global.CronoSpriteList,Crono_DownFace_Walking);
ds_list_add(global.CronoSpriteText,"Crono_LeftFace");
ds_list_add(global.CronoSpriteText,"Crono_LeftFace_Walking");
ds_list_add(global.CronoSpriteText,"Crono_RightFace");
ds_list_add(global.CronoSpriteText,"Crono_RightFace_Walking");
ds_list_add(global.CronoSpriteText,"Crono_UpFace");
ds_list_add(global.CronoSpriteText,"Crono_UpFace_Walking");
ds_list_add(global.CronoSpriteText,"Crono_DownFace");
ds_list_add(global.CronoSpriteText,"Crono_DownFace_Walking");
global.IncognitoSpriteList = ds_list_create();
global.IncognitoSpriteText = ds_list_create();
ds_list_add(global.IncognitoSpriteList,Incognito_LeftFace);
ds_list_add(global.IncognitoSpriteList,Incognito_RightFace);
ds_list_add(global.IncognitoSpriteList,Incognito_UpFace);
ds_list_add(global.IncognitoSpriteList,Incognito_DownFace);
ds_list_add(global.IncognitoSpriteText,"Incognito_LeftFace");
ds_list_add(global.IncognitoSpriteText,"Incognito_RightFace");
ds_list_add(global.IncognitoSpriteText,"Incognito_UpFace");
ds_list_add(global.IncognitoSpriteText,"Incognito_DownFace");
global.BlueShieldSpriteList = ds_list_create();
global.BlueShieldSpriteText = ds_list_create();
ds_list_add(global.BlueShieldSpriteList,BlueSheild_LeftFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_RightFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_UpFace);
ds_list_add(global.BlueShieldSpriteList,BlueSheild_DownFace);
ds_list_add(global.BlueShieldSpriteText,"BlueSheild_LeftFace");
ds_list_add(global.BlueShieldSpriteText,"BlueSheild_RightFace");
ds_list_add(global.BlueShieldSpriteText,"BlueSheild_UpFace");
ds_list_add(global.BlueShieldSpriteText,"BlueSheild_DownFace");
global.GremlinSpriteList = ds_list_create();
global.GremlinSpriteText = ds_list_create();
ds_list_add(global.GremlinSpriteList,Gremlin_LeftFace);
ds_list_add(global.GremlinSpriteList,Gremlin_LeftFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_RightFace);
ds_list_add(global.GremlinSpriteList,Gremlin_RightFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_UpFace);
ds_list_add(global.GremlinSpriteList,Gremlin_UpFace_Walking);
ds_list_add(global.GremlinSpriteList,Gremlin_DownFace);
ds_list_add(global.GremlinSpriteList,Gremlin_DownFace_Walking);
ds_list_add(global.GremlinSpriteText,"Gremlin_LeftFace");
ds_list_add(global.GremlinSpriteText,"Gremlin_LeftFace_Walking");
ds_list_add(global.GremlinSpriteText,"Gremlin_RightFace");
ds_list_add(global.GremlinSpriteText,"Gremlin_RightFace_Walking");
ds_list_add(global.GremlinSpriteText,"Gremlin_UpFace");
ds_list_add(global.GremlinSpriteText,"Gremlin_UpFace_Walking");
ds_list_add(global.GremlinSpriteText,"Gremlin_DownFace");
ds_list_add(global.GremlinSpriteText,"Gremlin_DownFace_Walking");
global.RatSpriteList = ds_list_create();
global.RatSpriteText = ds_list_create();
ds_list_add(global.RatSpriteList,Rat_LeftFace);
ds_list_add(global.RatSpriteList,Rat_LeftFace_Walking);
ds_list_add(global.RatSpriteList,Rat_RightFace);
ds_list_add(global.RatSpriteList,Rat_RightFace_Walking);
ds_list_add(global.RatSpriteList,Rat_UpFace);
ds_list_add(global.RatSpriteList,Rat_UpFace_Walking);
ds_list_add(global.RatSpriteList,Rat_DownFace);
ds_list_add(global.RatSpriteList,Rat_DownFace_Walking);
ds_list_add(global.RatSpriteText,"Rat_LeftFace");
ds_list_add(global.RatSpriteText,"Rat_LeftFace_Walking");
ds_list_add(global.RatSpriteText,"Rat_RightFace");
ds_list_add(global.RatSpriteText,"Rat_RightFace_Walking");
ds_list_add(global.RatSpriteText,"Rat_UpFace");
ds_list_add(global.RatSpriteText,"Rat_UpFace_Walking");
ds_list_add(global.RatSpriteText,"Rat_DownFace");
ds_list_add(global.RatSpriteText,"Rat_DownFace_Walking");
global.RoboSpriteList= ds_list_create();
global.RoboSpriteText= ds_list_create();
ds_list_add(global.RoboSpriteList,Robo_LeftFace);
ds_list_add(global.RoboSpriteList,Robo_LeftFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_RightFace);
ds_list_add(global.RoboSpriteList,Robo_RightFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_UpFace);
ds_list_add(global.RoboSpriteList,Robo_UpFace_Walking);
ds_list_add(global.RoboSpriteList,Robo_DownFace);
ds_list_add(global.RoboSpriteList,Robo_DownFace_Walking);
ds_list_add(global.RoboSpriteText,"Robo_LeftFace");
ds_list_add(global.RoboSpriteText,"Robo_LeftFace_Walking");
ds_list_add(global.RoboSpriteText,"Robo_RightFace");
ds_list_add(global.RoboSpriteText,"Robo_RightFace_Walking");
ds_list_add(global.RoboSpriteText,"Robo_UpFace");
ds_list_add(global.RoboSpriteText,"Robo_UpFace_Walking");
ds_list_add(global.RoboSpriteText,"Robo_DownFace");
ds_list_add(global.RoboSpriteText,"Robo_DownFace_Walking");
global.NuSpriteList = ds_list_create();
global.NuSpriteText = ds_list_create();
ds_list_add(global.NuSpriteList,Nu_LeftFace);
ds_list_add(global.NuSpriteList,Nu_LeftFace_Walking);
ds_list_add(global.NuSpriteList,Nu_RightFace);
ds_list_add(global.NuSpriteList,Nu_RightFace_Walking);
ds_list_add(global.NuSpriteList,Nu_UpFace);
ds_list_add(global.NuSpriteList,Nu_UpFace_Walking);
ds_list_add(global.NuSpriteList,Nu_DownFace);
ds_list_add(global.NuSpriteList,Nu_DownFace_Walking);
ds_list_add(global.NuSpriteText,"Nu_LeftFace");
ds_list_add(global.NuSpriteText,"Nu_LeftFace_Walking");
ds_list_add(global.NuSpriteText,"Nu_RightFace");
ds_list_add(global.NuSpriteText,"Nu_RightFace_Walking");
ds_list_add(global.NuSpriteText,"Nu_UpFace");
ds_list_add(global.NuSpriteText,"Nu_UpFace_Walking");
ds_list_add(global.NuSpriteText,"Nu_DownFace");
ds_list_add(global.NuSpriteText,"Nu_DownFace_Walking");
global.FrogSpriteList = ds_list_create();
global.FrogSpriteText = ds_list_create();
ds_list_add(global.FrogSpriteList,Frog_LeftFace);
ds_list_add(global.FrogSpriteList,Frog_LeftFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_RightFace);
ds_list_add(global.FrogSpriteList,Frog_RightFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_UpFace);
ds_list_add(global.FrogSpriteList,Frog_UpFace_Walking);
ds_list_add(global.FrogSpriteList,Frog_DownFace);
ds_list_add(global.FrogSpriteList,Frog_DownFace_Walking);
ds_list_add(global.FrogSpriteText,"Frog_LeftFace");
ds_list_add(global.FrogSpriteText,"Frog_LeftFace_Walking");
ds_list_add(global.FrogSpriteText,"Frog_RightFace");
ds_list_add(global.FrogSpriteText,"Frog_RightFace_Walking");
ds_list_add(global.FrogSpriteText,"Frog_UpFace");
ds_list_add(global.FrogSpriteText,"Frog_UpFace_Walking");
ds_list_add(global.FrogSpriteText,"Frog_DownFace");
ds_list_add(global.FrogSpriteText,"Frog_DownFace_Walking");