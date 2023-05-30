// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*function createCombatUI(){
	
	cardStats = [oSizeButton, oSmartsButton, oSpeechButton, oSpeedButton, oStrengthButton];
	
	for (cardStat = 0; cardStat < array_length(cardStats); cardStat++;){
		cardStatX = 480+(sprite_get_width(oSizeButton)+(cardStat*160))
		cardStatY = 960
		instance_create_layer(cardStatX,cardStatY,"Buttons",cardStats[cardStat]);
	}
}*/

/*function chooseStat(player, stat){
	aiNum = variable_instance_get(global.aiHand[0],stat);
	playerStatNum = variable_instance_get(global.playerHand[0],stat);
	if (instance_exists(global.playerHand[0])){
			instance_destroy(global.playerHand[0]);
		}
		if (instance_exists(global.aiHand[0])){
			instance_destroy(global.aiHand[0]);
		}
	if (player && global.playerTurn) {

		if (aiNum > playerStatNum){
			
		show_message("AI WINS, AI HAD " + string(aiNum) + " and player had " + string(playerStatNum));
		addCard(global.aiHand,global.playerHand);
		addCard(global.aiHand,global.aiHand);
		
		} else {
		show_message("PLAYER WINS, PLAYER HAD " + string(playerStatNum) + " and AI had " + string(aiNum));
		addCard(global.playerHand,global.aiHand);
		addCard(global.playerHand,global.playerHand);
		}
		global.playerTurn = false;
	}
	if (!player) {
		
		if (aiNum > playerStatNum){
		
		show_message("AI PICKED " + string(stat) + ". \n" + "AI WINS, AI HAD " + string(aiNum) + " and player had " + string(playerStatNum));
		addCard(global.aiHand,global.playerHand);
		addCard(global.aiHand,global.aiHand);
		
		} else {
		show_message("AI PICKED " + string(stat) + ". \n" +"PLAYER WINS, PLAYER HAD " + string(playerStatNum) + " and AI had " + string(aiNum));
		addCard(global.playerHand,global.aiHand);
		addCard(global.playerHand,global.playerHand);
		}
		
		global.playerTurn = true;

	}
	
	show_debug_message("playerHandLength {0}",array_length(global.playerHand));
	show_debug_message("aiHandLength {0}",array_length(global.aiHand));
	
	if (array_length(global.playerHand) > 0){
		instance_create_layer(427,176,"playerCard", global.playerHand[0]);
	};
	
	if (array_length(global.aiHand) > 0){
		instance_create_layer(1131,176,"aiCard", global.aiHand[0]);
	};
}*/


function chooseStat(player, stat) {
    if (!global.playerLives) {
        global.playerLives = 6; // Initialize player lives
    }
    if (!global.aiLives) {
        global.aiLives = 6; // Initialize AI lives
    }

 if (array_length(global.playerHand) > 0) {
        var playerStatNum = variable_instance_get(global.playerHand[0], stat);
        instance_destroy(global.playerHand[0]);
    } else {
        show_debug_message("Player hand is empty");
        return;
    }

    if (array_length(global.aiHand) > 0) {
        var aiNum = variable_instance_get(global.aiHand[0], stat);
        instance_destroy(global.aiHand[0]);
    } else {
        show_debug_message("AI hand is empty");
        return;
    }

    var currentPlayer;

    if (player && global.playerTurn) {
        currentPlayer = "player";
        if (playerStatNum > aiNum) {
            global.aiLives -= 1;
			addCard(global.aiHand,global.playerHand);
			addCard(global.aiHand,global.aiHand);

        } else {
            global.playerLives -= 1;
            currentPlayer = "ai";
			addCard(global.playerHand,global.aiHand);
			addCard(global.playerHand,global.playerHand);
        }
    }

    if (!player) {
        currentPlayer = "ai";
        if (aiNum > playerStatNum) {
            global.playerLives -= 1;
			addCard(global.aiHand,global.playerHand);
			addCard(global.aiHand,global.aiHand);

        } else {
            global.aiLives -= 1;
            currentPlayer = "player";
			addCard(global.playerHand,global.aiHand);
			addCard(global.playerHand,global.playerHand);
        }
    }

    global.playerTurn = (currentPlayer == "player");

    // Update turn prompt
    var turnPrompt = oTurnPrompt;
        if (global.playerTurn) {
            turnPrompt.image_index = 0; // Set sprite frame index to represent player's turn
        } else {
            turnPrompt.image_index = 1; // Set sprite frame index to represent AI's turn
        }
    

    show_debug_message("playerHandLength {0}", array_length(global.playerHand));
    show_debug_message("aiHandLength {0}", array_length(global.aiHand));

    if (array_length(global.playerHand) > 0) {
        instance_create_layer(427, 176, "playerCard", global.playerHand[0]);
    }

    if (array_length(global.aiHand) > 0) {
        instance_create_layer(1131, 176, "aiCard", global.aiHand[0]);
    }

    // Update health sprites
    var playerHealthSprite = instance_find(oPlayerHealth, 0);
    var aiHealthSprite = instance_find(oAIHealth, 0);

    if (instance_exists(playerHealthSprite)) {
        playerHealthSprite.image_index = clamp(6 - global.playerLives, 0, 6);
		audio_play_sound(mExplosion, 1000, false);
    }

    if (instance_exists(aiHealthSprite)) {
        aiHealthSprite.image_index = clamp(6 - global.aiLives, 0, 6);
		audio_play_sound(mExplosion, 1000, false);
    }

    // Check win/lose conditions
if (global.playerLives <= 0) {
    // Player loses
	layer_set_visible("buttons",false);
	layer_set_visible("AIStatLevel", false);
    var popup = oPopup;
    if (popup != noone) {
        popup.image_index = 2;
    }
} else if (global.aiLives <= 0) {
    // AI loses
	layer_set_visible("buttons",false);
	layer_set_visible("AIStatLevel", false);
    var popup = oPopup;
    if (popup != noone) {
        popup.image_index = 1;
    }
}

}
