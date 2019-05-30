/// @description Insert description here
// You can write your code in this editor
switch(tabCounter){
	case 0:
		//show_debug_message("Going to Password Box");
		Username_Box.typing = false;
		Username_Box.blink = false;
		Username_Box.alarm[0] = -1;
		nameCheck();
		keyboard_string = "";
		Password_Box.pass_typing = true;
		Password_Box.pass_blink = true;
		Password_Box.alarm[0]=25;
		tabCounter=1;
		break;
	case 1:
		//show_debug_message("Going to cONFIRM Box");
		Password_Box.pass_typing = false;
		Password_Box.pass_blink = false;
		Password_Box.alarm[0] = -1;
		keyboard_string = "";
		confirmPass.cpass_typing = true;
		confirmPass.cpass_blink = true;
		confirmPass.alarm[0]=25;
		tabCounter=2;
		break;
	case 2:
		//show_debug_message("Going to Username Box");
		confirmPass.cpass_typing = false;
		confirmPass.cpass_blink = false;
		confirmPass.alarm[0] = -1;
		keyboard_string = "";
		Username_Box.typing = true;
		Username_Box.blink = true;
		Username_Box.alarm[0]=25;
		tabCounter = 0;
		break;
}