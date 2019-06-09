/// @description Insert description here
// You can write your code in this editor
var temp = ds_list_create();
show_debug_message("In alarm1, Created temp");
var pos = ds_list_size(global.global_Username_list);
show_debug_message("pos: " + string(pos));
ds_list_add(temp,ds_list_find_value(global.global_Username_list,pos-1));
temp = string_split(ds_list_find_value(temp,0),",");
show_debug_message("Printing temp: ");
for(var j=0;j<ds_list_size(temp);j++){
	show_debug_message(ds_list_find_value(temp,j));
}
for(var i=0;i<ds_list_size(temp);i++){
	if(ds_list_find_index(obj_NameApproval.localNameList,ds_list_find_value(temp,i)) == -1){
		show_debug_message("Adding \"" + ds_list_find_value(temp,i) + "\"");
		ds_list_add(obj_NameApproval.localNameList,ds_list_find_value(temp,i));
	}
}