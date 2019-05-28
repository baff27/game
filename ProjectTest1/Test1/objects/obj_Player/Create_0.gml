/// @description 
// You can write your code in this editor
player_username = string_upper(obj_Client.client_Username);
player_sprite = string_upper(obj_Client.client_Character);
player_room_level = obj_Client.client_Room_Level;
sprite_list = noone;
switch (player_sprite){
	case "CRONO":
		sprite_list = global.CronoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	case "INCOGNITO":
		sprite_list = global.IncognitoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,3);
		break;
	case "BLUESHIELD":
		sprite_list = global.BlueShieldSpriteList;
		sprite_index = ds_list_find_value(sprite_list,3);
		break;
	case "GREMLIN":
		sprite_list = global.GremlinSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	case "RAT":
		sprite_list = global.RatSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	case "ROBO":
		sprite_list = global.RoboSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	case "NU":
		sprite_list = global.NuSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	case "FROG":
		sprite_list = global.FrogSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
	default:
		sprite_list = global.CronoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		break;
}