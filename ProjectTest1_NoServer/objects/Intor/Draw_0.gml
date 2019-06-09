/// @description Insert description here
// You can write your code in this editor
draw_set_font(fontSign);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var str = "Welcome!\nThis game is a multiplayer, puzzle-solving game. Similar to an escape room. There will be clues on each stage, and the goal is to get through all the stages. Good luck, as the stages get harder as you continue!\n\nClick anywhere to go to the main menu"
draw_text_ext_transformed(room_width/2,room_height/2,str,-1,(room_width/6)*3,1.5,1.5,0);
