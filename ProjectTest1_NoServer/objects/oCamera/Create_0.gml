/// @description Camera
// You can write your code in this editor
camera = camera_create();
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(512,320,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

//camera_set_view_border(camera,0,0);
follow = obj_Player;

xTo = x;
yTo = y;