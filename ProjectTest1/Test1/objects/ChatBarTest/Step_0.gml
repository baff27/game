/// @description Insert description here
// You can write your code in this editor
if(visible==1){
	if(chat_typing){
		if(keyboard_check(vk_anykey) and string_length(chat_text) < 100){
			chat_text += keyboard_string;
			keyboard_string = "";
		}
		if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and chat_Del_Timer = 2){
			chat_text = string_delete(chat_text,string_length(chat_text),1);
			chat_Del_Timer = 0;
			keyboard_string = "";
		}
		if(keyboard_check_pressed(vk_backspace)){
			chat_text = string_delete(chat_text,string_length(chat_text),1);
			keyboard_string = "";
			chat_Del_Timer = -4;
		}
		//Handle Timer Updates
		if(chat_Del_Timer !=2){
			chat_Del_Timer++;	
		}
		/*
		if (string_lower(chat_text) == string_lower(Username_Box.usrName_text)){
			pass_eqs_usr = true;
		}
		else{
			pass_eqs_usr = false;
		}
		Make this the passkey checker
		*/
	}
}