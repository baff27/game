/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left) or keyboard_check(ord("A"))){
	sprite_index = Crono_LeftFace_Walking;
	x-=2;
}
if(keyboard_check_released(vk_left) or keyboard_check_released(ord("A"))){
	sprite_index = Crono_LeftFace;
}
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){
	sprite_index = Crono_RightFace_Walking;
	x+=2;
}
if(keyboard_check_released(vk_right) or keyboard_check_released(ord("D"))){
	sprite_index = Crono_RightFace;
}
if(keyboard_check(vk_up) or keyboard_check(ord("W"))){
	sprite_index = Crono_UpFace_Walking;
	y-=2;
}
if(keyboard_check_released(vk_up) or keyboard_check_released(ord("W"))){
	sprite_index = Crono_UpFace;
}
if(keyboard_check(vk_down) or keyboard_check(ord("S"))){
	sprite_index = Crono_DownFace_Walking;
	y+=2;
}
if(keyboard_check_released(vk_down) or keyboard_check_released(ord("S"))){
	sprite_index = Crono_DownFace;
}