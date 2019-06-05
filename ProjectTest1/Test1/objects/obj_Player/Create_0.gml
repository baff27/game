/// @description 
// You can write your code in this editor
player_username = string_upper(obj_Client.client_Username);
player_sprite = string_upper(obj_Client.client_Character);
show_debug_message("Player Sprite: " + player_sprite);
player_room_level = obj_Client.client_Room_Level;
sprite_list = noone;
sprite_text_list = noone;
current_sprite = noone;
switch (player_sprite){
	case "CRONO":
		sprite_list = global.CronoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.CronoSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	case "INCOGNITO":
		sprite_list = global.IncognitoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,3);
		sprite_text_list = global.IncognitoSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,3);
		break;
	case "BLUESHIELD":
		sprite_list = global.BlueShieldSpriteList;
		sprite_index = ds_list_find_value(sprite_list,3);
		sprite_text_list = global.BlueShieldSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,3);
		break;
	case "GREMLIN":
		sprite_list = global.GremlinSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.GremlinSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	case "RAT":
		sprite_list = global.RatSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.RatSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	case "ROBO":
		show_debug_message("Inside Robo");
		sprite_list = global.RoboSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.RoboSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	case "NU":
		sprite_list = global.NuSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.NuSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	case "FROG":
		sprite_list = global.FrogSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.FrogSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
	default:
		sprite_list = global.CronoSpriteList;
		sprite_index = ds_list_find_value(sprite_list,6);
		sprite_text_list = global.CronoSpriteText;
		current_sprite = ds_list_find_value(sprite_text_list,6);
		break;
}
update_pos(global.token,x,y,current_sprite);