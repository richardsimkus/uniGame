/// @description Insert description here
// You can write your code in this editor
//if (global.playerTurn) {
//	layer_set_visible("playerButtons",true);
//} else {
//	layer_set_visible("playerButtons",false);	
//}

if (array_length(global.aiHand) == 0){
	layer_set_visible("Buttons",false);	
	global.inCombat = false;
	with (oPopup){
		
		image_index = 1;
	}
	show_debug_message("PLAYER WINS THE GAME")
}

if (array_length(global.playerHand) == 0){
	layer_set_visible("Buttons",false);	
	global.inCombat = false;
	with (oPopup){
		image_index = 2;
	}
	show_debug_message("AI WINS THE GAME")
}

if (global.playerTurn) {
	with (oTurn) {
		image_index = 0;	
	}
}	else {
	with (oTurn) {
		image_index = 1;	
	}
}

if (!global.playerTurn && global.inCombat == true){
	
	global.aiThinkTimer -= 1;
	
	if (global.aiThinkTimer == 0){
		aiPlayTurn();
	}
}
