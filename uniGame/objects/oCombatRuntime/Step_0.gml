if (global.playerTurn) {
	layer_set_visible("playerButtons",true);
} else {
	layer_set_visible("playerButtons",false);	
}

if (array_length(global.aiHand) == 0){
	layer_set_visible("playerButtons",false);	
	global.inCombat = false;
	show_message("PLAYER WINS THE GAME")
	show_debug_message("PLAYER WINS THE GAME")
}

if (array_length(global.playerHand) == 0){
	layer_set_visible("playerButtons",false);	
	global.inCombat = false;
	show_message("AI WINS THE GAME")
	show_debug_message("AI WINS THE GAME")
}

if (!global.playerTurn && global.inCombat == true){
	aiPlayTurn();
}