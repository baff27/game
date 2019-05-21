var Username = argument[0];
var Sprite = argument[1];
var Room_Level = argument[2];
switch(Room_Level){
	case "Level_1":
		object_set_sprite(obj_Player,get_sprite(Sprite));
		instance_create_layer(Level_1.xstart,Level_1.ystart,Level_1,obj_Player);
		obj_Player.player_username = Username;
		obj_Player.player_sprite = Sprite;
		obj_Player.player_room_level = Room_Level;
		break;
	case "Level_2":
		object_set_sprite(obj_Player,get_sprite(Sprite));
		instance_create_layer(Level_2.xstart,Level_2.ystart,Level_2,obj_Player);
		obj_Player.player_username = Username;
		obj_Player.player_sprite = Sprite;
		obj_Player.player_room_level = Room_Level;
		break;
	case "Level_3":
		object_set_sprite(obj_Player,get_sprite(Sprite));
		instance_create_layer(Level_3.xstart,Level_3.ystart,Level_3,obj_Player);
		obj_Player.player_username = Username;
		obj_Player.player_sprite = Sprite;
		obj_Player.player_room_level = Room_Level;
		break;
	case "Level_4":
		object_set_sprite(obj_Player,get_sprite(Sprite));
		instance_create_layer(Level_4.xstart,Level_4.ystart,Level_4,obj_Player);
		obj_Player.player_username = Username;
		obj_Player.player_sprite = Sprite;
		obj_Player.player_room_level = Room_Level;
		break;
	case "Level_Final":
		object_set_sprite(obj_Player,get_sprite(Sprite));
		instance_create_layer(Level_Final.xstart,Level_Final.ystart,Level_Final,obj_Player);
		obj_Player.player_username = Username;
		obj_Player.player_sprite = Sprite;
		obj_Player.player_room_level = Room_Level;
		break;
}
