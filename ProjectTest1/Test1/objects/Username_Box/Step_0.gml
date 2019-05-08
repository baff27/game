/// @description Handle Keys
// You can write your code in this editor
if(keyboard_check(vk_anykey) and string_length(usrName_text) < 24){
		usrName_text += keyboard_string;
		keyboard_string = "";
}
if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and usrName_Del_Timer = 2){
	usrName_text = string_delete(usrName_text,string_length(usrName_text),1);
	usrName_Del_Timer = 0;
	keyboard_string = "";
}
if(keyboard_check_pressed(vk_backspace)){
	usrName_text = string_delete(usrName_text,string_length(usrName_text),1);
	keyboard_string = "";
	usrName_Del_Timer = -4;
}
//Handle Timer Updates
if(usrName_Del_Timer !=2){
	usrName_Del_Timer++;	
}