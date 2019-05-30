/// @description Insert description here
// You can write your code in this editor
var p = obj_Player;
if(rectangle_in_rectangle(p.x,p.y,p.x+p.sprite_width,p.y+p.sprite_height,x-18,y-18,x+18,y+18) != 0){
	xx = camera_get_view_x(view_camera[0]);
	yy = camera_get_view_y(view_camera[0]);
	close = true;
}
else{
	close = false;
}