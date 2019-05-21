/// @description Checks if username is taken
// You can write your code in this editor
var i = 0;
typing = PlayerLoad_Username_Box.typing;
usrName_text = PlayerLoad_Username_Box.usrName_text;
//obj_Client.global_Username_list;
var gbListSize = ds_list_size(temp_Global_Username_list);
if(typing or string_length(usrName_text) > 0){
	while (i < gbListSize){
		
		if (string_lower(usrName_text) == string_lower(ds_list_find_value(temp_Global_Username_list,i))){
			 nameMatch = true;
			 break;
		}
		i++
		nameMatch = false;
	}
}
if(string_length(usrName_text) > 0){
	if(nameMatch){
		obj_PlayerLoad_NameApproval.image_index = 1;
	}
	else
		obj_PlayerLoad_NameApproval.image_index = 2;
}
if(string_length(usrName_text) == 0){
	obj_PlayerLoad_NameApproval.image_index = 0;
}