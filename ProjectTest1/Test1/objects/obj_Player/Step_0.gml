/// @description Insert description here
// You can write your code in this editor
//if(ChatBarTest.visible == 0){
	if(player_sprite == "BLUESHIELD" or player_sprite == "INCOGNITO"){
		if((keyboard_check(vk_left) or keyboard_check(ord("A"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,0);
			x-=2;
			//UPDATE_CORDS,token,x,y,sprite
			current_sprite = ds_list_find_value(sprite_text_list,0);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_left) or keyboard_check_released(ord("A"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,0);
			current_sprite = ds_list_find_value(sprite_text_list,0);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_right) or keyboard_check(ord("D"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,1);
			x+=2;
			current_sprite = ds_list_find_value(sprite_text_list,1);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_right) or keyboard_check_released(ord("D"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,1);
			current_sprite = ds_list_find_value(sprite_text_list,1);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_up) or keyboard_check(ord("W"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,2);
			y-=2;
			current_sprite = ds_list_find_value(sprite_text_list,2);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_up) or keyboard_check_released(ord("W"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,2);
			current_sprite = ds_list_find_value(sprite_text_list,2);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_down) or keyboard_check(ord("S"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,3);
			y+=2;
			current_sprite = ds_list_find_value(sprite_text_list,3);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_down) or keyboard_check_released(ord("S"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,3);
			current_sprite = ds_list_find_value(sprite_text_list,3);
			update_pos(global.token,x,y,current_sprite);
		}
	}
	else{
		if((keyboard_check(vk_left) or keyboard_check(ord("A"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,1);
			x-=2;
			current_sprite = ds_list_find_value(sprite_text_list,1);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_left) or keyboard_check_released(ord("A"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,0);
			current_sprite = ds_list_find_value(sprite_text_list,0);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_right) or keyboard_check(ord("D"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,3);
			x+=2;
			current_sprite = ds_list_find_value(sprite_text_list,3);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_right) or keyboard_check_released(ord("D"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,2);
			current_sprite = ds_list_find_value(sprite_text_list,2);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_up) or keyboard_check(ord("W"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,5);
			y-=2;
			current_sprite = ds_list_find_value(sprite_text_list,5);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_up) or keyboard_check_released(ord("W"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,4);
			current_sprite = ds_list_find_value(sprite_text_list,4);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check(vk_down) or keyboard_check(ord("S"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,7);
			y+=2;
			current_sprite = ds_list_find_value(sprite_text_list,7);
			update_pos(global.token,x,y,current_sprite);
		}
		if((keyboard_check_released(vk_down) or keyboard_check_released(ord("S"))) and (ChatBarTest.visible == 0)){
			sprite_index = ds_list_find_value(sprite_list,6);
			current_sprite = ds_list_find_value(sprite_text_list,6);
			update_pos(global.token,x,y,current_sprite);
		}
	}
//}