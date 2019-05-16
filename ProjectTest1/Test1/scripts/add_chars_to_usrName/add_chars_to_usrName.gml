var usrNameText = argument[0];
letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
nums = "0123456789_";
for(i=1;i<=string_length(letters);i++){
	if (keyboard_string == string_char_at(letters,i)){
		usrNameText += keyboard_string;
	}
}
for(j=1;j<=string_length(nums);j++){
	if (keyboard_string == string_char_at(nums,j)){
		usrNameText += keyboard_string;
	}
}
return usrNameText;
