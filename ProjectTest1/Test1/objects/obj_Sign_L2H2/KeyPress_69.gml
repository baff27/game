/// @description Insert description here
// You can write your code in this editor
if (global.e_state == false and !ChatBarTest.chat_typing){
	global.e_state = true;
	//show_debug_message("E key was pressed\nSetting to true");
}else{
	if (global.e_state == true){
		global.e_state = false;
		//show_debug_message("E key was pressed\nSetting to false");
	}
}