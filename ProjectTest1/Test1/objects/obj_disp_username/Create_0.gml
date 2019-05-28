/// @description Insert description here
// You can write your code in this editor
userName = obj_Player.player_username;

image_xscale = string_length(userName);

scalingPerLetter  = string_length(userName)*11;
scaling = (scalingPerLetter+((string_length(userName)-1)*2));
show_debug_message("scaling: " + string(scaling));
for(i=1;sprite_width<=scaling;i++){
	image_xscale += 0.001;
}



/*
image_xscale = string_width(userName)/3;
//xoff = ((string_width(userName)/2)+(string_width(userName)/6))/(string_width(userName)/3)
show_debug_message("String Width: " + string(string_width(userName)));
show_debug_message("Scale: " + string(string_width(userName)/3));
show_debug_message("Xoffset: " + string(sprite_xoffset));
sprite_set_offset(username_bar,2,sprite_yoffset);
show_debug_message("XOffsetAfter: " + string(sprite_xoffset));
//FIX IMAGE SCALING ISSUE*/