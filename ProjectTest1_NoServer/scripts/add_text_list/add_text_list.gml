var message = argument[0];
var d = "<";
if(string_pos(d,message) != 1){
	message = string_delete(message,1,string_pos(d,message)-1);
}
ds_list_add(global.m_list,message);