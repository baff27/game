/// @description Handle Keys
// You can write your code in this editor
if(typing){
	if(keyboard_check(vk_anykey) and string_length(usrName_text) < 24){
		usrName_text = add_chars_to_usrName(usrName_text);
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
	if (keyboard_check(vk_enter) || (mouse_check_button(mb_left) && !point_in_rectangle(mouse_x,mouse_y,420,247,667,284))){
		typing = false;
		blink = false;
		alarm[0] = -1;
		
		//obj_user.name = text;
	}
	if(string_lower(Password_Box.Password_text) == string_lower(usrName_text)){
		Password_Box.pass_eqs_usr = true;
	}
	else{
		Password_Box.pass_eqs_usr = false;
	}
}