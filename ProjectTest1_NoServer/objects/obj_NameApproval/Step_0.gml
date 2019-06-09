/// @description Checks if username is taken
// You can write your code in this editor

var i = 0;
typing = Username_Box.typing;
usrName_text = Username_Box.usrName_text;
//obj_Client.global_Username_list;
var gbListSize = ds_list_size(localNameList);
var gList = localNameList;
if(typing or string_length(usrName_text) > 0){
	while (i < gbListSize){
		
		if (string_upper(usrName_text) == string_upper(ds_list_find_value(gList,i))){
			show_debug_message("Username: " + string_upper(usrName_text));
			show_debug_message("gList: " + string_upper(ds_list_find_value(gList,i)));
			nameMatch = true;
			break;
		}
		i++;
		nameMatch = false;
	}
}
if(string_length(usrName_text) > 0){
	if(nameMatch or string_length(usrName_text) <= 1){
		obj_NameApproval.image_index = 2;
	}
	else
		obj_NameApproval.image_index = 1;
}
if(string_length(usrName_text) == 0){
	obj_NameApproval.image_index = 0;
}
