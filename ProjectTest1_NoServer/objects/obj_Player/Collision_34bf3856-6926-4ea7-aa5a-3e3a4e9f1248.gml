/// @description Insert description here
// You can write your code in this editor
move_bounce_solid(true);
if(place_meeting(x+sprite_width+hspeed+1,y,obj_Wall)){
	hspeed = 0;
}
	if(place_meeting(x-3,y,obj_Wall)){
		hspeed = 0;

	}

if(place_meeting(x,y+vspeed+sprite_height+1,obj_Wall)){
	vspeed = 0;
}
	if(place_meeting(x,y-3,obj_Wall)){
		vspeed = 0;
	}
