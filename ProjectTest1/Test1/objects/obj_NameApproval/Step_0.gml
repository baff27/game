/// @description Checks if username is taken
// You can write your code in this editor
if(!ds_list_empty(global.global_Username_list)){
	global.global_Username_list = string_split(ds_list_find_value(global.global_Username_list,0),",");
}else{ds_list_add(global.global_Username_list,"ADMIN");ds_list_add(global.global_Username_list,"MOD");ds_list_add(global.global_Username_list,"MODERATOR");ds_list_add(global.global_Username_list,"ADMINISTRATOR");}
var i = 0;
typing = Username_Box.typing;
usrName_text = Username_Box.usrName_text;
//obj_Client.global_Username_list;
var gbListSize = ds_list_size(global.global_Username_list);
var gList = global.global_Username_list;
if(typing or string_length(usrName_text) > 0){
	while (i < gbListSize){
		
		if (string_lower(usrName_text) == string_lower(ds_list_find_value(gList,i))){
			 nameMatch = true;
			 break;
		}
		i++
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
