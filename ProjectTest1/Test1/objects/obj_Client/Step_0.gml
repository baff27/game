/// @description Timer for the Alarm
// You can write your code in this editor
if(room == asset_get_index("Character_Creation")){
	alarm[0] = 30;
}
if (token){
	IncomingData = 2;
	show_debug_message("Setting Incoming Data to 2");
}else{
	if (userlist) {
		IncomingData = 1;
	}else{
		if(loadchar){
			IncomingData = 3;
		}else{
			IncomingData = 0;
		}
	}
}