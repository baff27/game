var text = argument[0];//Accept an input;
show_debug_message("In keypass script, Text input is: \n" + text);
var room_text = argument[1];//Accepts another input;
var len = string_length(text);//length of string;
var trigger = string_pos("%",text);
show_debug_message("% position: " + string(trigger));
var levelKey = "";
if(trigger != 0){
	switch (room_text){
		case "Level_1":
			levelKey = "open";
			i=trigger;
			i++;
			if(string_lower(string_char_at(text,i))==string_char_at(levelKey,1)){
				show_debug_message(string_char_at(levelKey,1));
				i++;
				if(string_lower(string_char_at(text,i))==string_char_at(levelKey,2)){
					i++;
					if(string_lower(string_char_at(text,i))==string_char_at(levelKey,3)){
						i++;
						if(string_lower(string_char_at(text,i))==string_char_at(levelKey,4)){
							obj_Door.sprite_index = magic_Door_Open;
						}
					}
				}
			}
			break;
		case "Level_2":
			
			break;
		case "Level_3":
			
			break;
		case "Level_4":
			
			break;
		case "Level_Final":
			
			break;
		default:
			
			break;
	}
}
else{
	//run script to send message to the chat	
}