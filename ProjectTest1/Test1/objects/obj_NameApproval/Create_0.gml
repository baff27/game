/// @description Insert description here
// You can write your code in this edit
nameMatch = false;
obj_NameApproval.image_index = 0;
tabCounter =0;
localNameList = ds_list_create();
ds_list_add(localNameList,"ADMIN");
ds_list_add(localNameList,"ADMINISTRATOR");
ds_list_add(localNameList,"MOD");
ds_list_add(localNameList,"MODERATOR");
/*
if(!ds_list_empty(global.global_Username_list)){
	global.global_Username_list = string_split(ds_list_find_value(global.global_Username_list,0),",");
}else{ds_list_add(global.global_Username_list,"ADMIN");ds_list_add(global.global_Username_list,"MOD");ds_list_add(global.global_Username_list,"MODERATOR");ds_list_add(global.global_Username_list,"ADMINISTRATOR");}
	*/