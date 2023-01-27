/// @description Update playername as they type
lengthLimit = 14;
if (selected && string_length(keyboard_string)<=lengthLimit){
	global.playerName = keyboard_string;
}
