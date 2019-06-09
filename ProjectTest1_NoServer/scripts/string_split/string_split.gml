/// string_split(:string, delimiter:string):array<string>
var s = argument[0];
var d = argument[1];
var rl = ds_list_create();
s = string_delete(s,string_pos("[",s),1);
s = string_delete(s,string_pos("]",s),1);
var q = string_pos("'",s);
while (q != 0){
	s = string_delete(s,q,1);
	q = string_pos("'",s);
}
var p = string_pos(d,s);
//show_debug_message(s);
while(p != 0){
	ds_list_add(rl,string_copy(s,1,p-1));
	s = string_delete(s,1,p);
	p = string_pos(d,s);
}

ds_list_add(rl,string_letters(s));
//show_debug_message(s);
var temp = ds_list_create();
for(var i =0;i<ds_list_size(rl);i++){
	if(i==0){
		ds_list_add(temp,ds_list_find_value(rl,0));
	}else{
		var pos = string_pos(" ",ds_list_find_value(rl,i));
		if(pos != 0){
			ds_list_add(temp,string_delete(ds_list_find_value(rl,i),pos,1));
		}
		else{
			ds_list_add(temp,ds_list_find_value(rl,i));
		}
	}
}
rl = temp;
temp = noone;
return rl;