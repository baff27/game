/// @description Smooth Follow
// You can write your code in this editor
if(keyboard_check(vk_left) or keyboard_check(ord("A"))){
	x+=(xTo-x-60)/2;
}
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){
	x+=(xTo-x+80)/2;
}
if(keyboard_check(vk_up) or keyboard_check(ord("W"))){
	y+=(yTo-y-75)/2;
}
if(keyboard_check(vk_down) or keyboard_check(ord("S"))){
	y+=(yTo-y+90)/2;
}

if (follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);