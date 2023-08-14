/// @description Insert description here
// You can write your code in this editor
//if (global.playerTurn) {
//	layer_set_visible("playerButtons",true);
//} else {
//	layer_set_visible("playerButtons",false);
//}

if (!global.playerTurn && global.inCombat == true){
    global.aiThinkTimer -= 1;

    if (global.aiThinkTimer == 0){
		if (global.aiPickLowest) {
			aiPlayTurn(true);
		} else {
			aiPlayTurn(false);

		}
    }
}

if (global.playerTurn) {
    oTurnPrompt.image_index = 0; // Set sprite frame index to represent player's turn
} else {
    oTurnPrompt.image_index = 1; // Set sprite frame index to represent AI's turn
}

// Check win/lose conditions

if (global.inCombat){
	if (global.playerLives <= 0 || array_length(global.playerHand) == 0) {
	    // Player loses
		layer_set_visible("buttons",false);
		layer_set_visible("AIStatLevel", false);

	    if (oPopup != noone) {
	        oPopup.image_index = 2;
	    }
		global.inCombat = false;
	} else if (global.aiLives <= 0 || array_length(global.aiHand) == 0) {
	    // AI loses
		layer_set_visible("buttons",false);
		layer_set_visible("AIStatLevel", false);

	    if (oPopup != noone) {
	        oPopup.image_index = 1;
	    }
		instance_create_depth(736,480,-100,oMoneyReward);
		instance_create_depth(1088,480,-100,oRepairReward);
		global.inCombat = false;
	}
}

if (!global.inCombat) {
	layer_destroy_instances("Buttons")
	if (!increasedMapLevel){
		increasedMapLevel = true;
		global.mapLevel += 1;
	}
}


    aiHealthSprite = instance_find(oAIHealth, 0);


    if (instance_exists(aiHealthSprite)) {
        aiHealthSprite.image_index = clamp(global.aiLives, 0, 6);
    }
