/// @description Insert description here
// You can write your code in this editor
switch(tabCounter){
	case 0:
		//show_debug_message("Going to Password Box");
		PlayerLoad_Username_Box.typing = false;
		PlayerLoad_Username_Box.blink = false;
		PlayerLoad_Username_Box.alarm[0] = -1;
		//nameCheck();
		keyboard_string = "";
		PlayerLoad_Password_Box.pass_typing = true;
		PlayerLoad_Password_Box.pass_blink = true;
		PlayerLoad_Password_Box.alarm[0]=25;
		tabCounter=1;
		break;
	case 1:
		//show_debug_message("Going to cONFIRM Box");
		PlayerLoad_Password_Box.pass_typing = false;
		PlayerLoad_Password_Box.pass_blink = false;
		PlayerLoad_Password_Box.alarm[0] = -1;
		keyboard_string = "";
		PlayerLoad_Username_Box.typing = true;
		PlayerLoad_Username_Box.blink = true;
		PlayerLoad_Username_Box.alarm[0]=25;
		tabCounter=0;
		break;
}