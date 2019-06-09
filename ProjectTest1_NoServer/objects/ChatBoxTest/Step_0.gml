/// @description Insert description here
// You can write your code in this editor

//Follow The camera and stay in the corner
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
x = xx;
y = yy+305-120;
var total_mHeight = 0;
if(global.m_list > 0){
	for(var i = 0; i < ds_list_size(global.m_list); i++){
		total_mHeight += string_height(ds_list_find_value(global.m_list,i));
	}
	if(total_mHeight > 200){
		ds_list_delete(global.m_list,0);
	}
}