/// @description Handle Keys
// You can write your code in this editor
if(pass_typing){
	if(keyboard_check(vk_anykey) and string_length(Password_text) < 24 and string_length(hidden_text) < 24){
		Password_text += keyboard_string;
		if(string_length(keyboard_string) > 0){hidden_text+="\u2022";}
		keyboard_string = "";
	}
	if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and pass_Del_Timer = 2){
		Password_text = string_delete(Password_text,string_length(Password_text),1);
		hidden_text = string_delete(hidden_text,string_length(hidden_text),1);
		pass_Del_Timer = 0;
		keyboard_string = "";
	}
	if(keyboard_check_pressed(vk_backspace)){
		Password_text = string_delete(Password_text,string_length(Password_text),1);
		hidden_text = string_delete(hidden_text,string_length(hidden_text),1);
		keyboard_string = "";
		pass_Del_Timer = -4;
	}
	//Handle Timer Updates
	if(pass_Del_Timer !=2){
		pass_Del_Timer++;	
	}
	if (keyboard_check(vk_enter) || (mouse_check_button(mb_left) && !point_in_rectangle(mouse_x,mouse_y,420,341,667,378))){
		pass_typing = false;
		pass_blink = false;
		alarm[0] = -1;
		
		//obj_user.name = text;
	}
	if (password_UserHash_test(Password_text)){
		obj_join_game_Btn.join_game_btn_Active = true;
	}
}