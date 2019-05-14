/// @description Insert description here
// You can write your code in this editor
if(obj_NameApproval.image_index == 2 or obj_NameApproval.image_index == 0){
	obj_Char_Sel_Menu_Btn.image_index = 1;
}
if(obj_NameApproval.image_index == 1 and !(string_length(Password_Box.hidden_text) < 3)){
	obj_Char_Sel_Menu_Btn.image_index = 0;
}
else{
	obj_Char_Sel_Menu_Btn.image_index = 1;
}