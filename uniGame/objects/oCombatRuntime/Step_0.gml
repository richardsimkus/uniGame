/// @description Insert description here
// You can write your code in this editor
//if (global.playerTurn) {
//	layer_set_visible("playerButtons",true);
//} else {
//	layer_set_visible("playerButtons",false);	
//}

/*if (array_length(global.aiHand) == 0){
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
}*/

/// Step Event (oCombatRuntime)

if (!global.playerTurn && global.inCombat == true){
    global.aiThinkTimer -= 1;
    
    if (global.aiThinkTimer == 0){
        aiPlayTurn();
    }
}

if (global.playerTurn) {
    oTurnPrompt.image_index = 0; // Set sprite frame index to represent player's turn
} else {
    oTurnPrompt.image_index = 1; // Set sprite frame index to represent AI's turn
}

// Check win/lose conditions


if (global.playerLives <= 0 || global.playerHand == 0) {
    // Player loses
	layer_set_visible("buttons",false);
	layer_set_visible("AIStatLevel", false);
    
    if (oPopup != noone) {
        oPopup.image_index = 2;
    }
} else if (global.aiLives <= 0 || global.aiHand == 0) {
    // AI loses
	layer_set_visible("buttons",false);
	layer_set_visible("AIStatLevel", false);

    if (oPopup != noone) {
        oPopup.image_index = 1;
    }
}

playerHealthSprite = instance_find(oPlayerHealth, 0);
    aiHealthSprite = instance_find(oAIHealth, 0);

    if (instance_exists(playerHealthSprite)) {
        playerHealthSprite.image_index = clamp(global.playerLives, 0, 12);
    }

    if (instance_exists(aiHealthSprite)) {
        aiHealthSprite.image_index = clamp(global.aiLives, 0, 6);
    }