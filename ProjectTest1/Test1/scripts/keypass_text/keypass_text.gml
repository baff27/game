var text = argument[0];//Accept an input;
show_debug_message("In keypass script, Text input is: \n" + text);
var room_text = argument[1];//Accepts another input;
var len = string_length(text);//length of string;
var trigger = string_pos("%",text);
show_debug_message("% position: " + string(trigger));
var levelKey = "";
var passText = "";
if(trigger != 0){
	switch (room_text){
		case "Level_1":
			levelKey = "open";//Rewrite this fat bitch to use string_pos("open",str);
			passText = string_lower(string_copy(text,trigger+1,len-trigger));
			if(string_pos(levelKey,passText) != 0){
				obj_Door.sprite_index = magic_Door_Open;
				ChatBarTest.chat_text = "";
				keyboard_string = "";
			}
			else{
				ChatBarTest.chat_text = "";
				keyboard_string="";
			}
			break;
		case "Level_2":
			levelKey = "fibonacci";
			passText = string_lower(string_copy(text,trigger+1,len-trigger));
			if(string_pos(levelKey,passText) != 0){
				obj_Door.sprite_index = magic_Door_Open;
				ChatBarTest.chat_text = "";
				keyboard_string = "";
			}
			else{
				ChatBarTest.chat_text = "";
				keyboard_string="";
			}
			break;
		case "Level_3":
			levelKey = "";
			passText = string_lower(string_copy(text,trigger+1,len-trigger));
			if(string_pos(levelKey,passText) != 0){
				obj_Door.sprite_index = magic_Door_Open;
				ChatBarTest.chat_text = "";
				keyboard_string = "";
			}
			else{
				ChatBarTest.chat_text = "";
				keyboard_string="";
			}
			break;
	}
}