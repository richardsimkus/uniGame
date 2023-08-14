// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function chooseStat(player, stat) {
playerStatNum = 0;
aiNum = 0;
friendlyName = string_split(stat,"_");

 if (array_length(global.playerHand) > 0) {
        playerStatNum = variable_instance_get(global.playerHand[0], stat);
        instance_destroy(global.playerHand[0]);
    } else {
        show_debug_message("Player hand is empty");
        return;
    }

    if (array_length(global.aiHand) > 0) {
        aiNum = variable_instance_get(global.aiHand[0], stat);
        instance_destroy(global.aiHand[0]);
    } else {
        show_debug_message("AI hand is empty");
        return;
    }
	if (player){
		global.message = string("You picked {0}: {1}, Ai had {2} ", friendlyName[0],playerStatNum,aiNum);
	} else {
		global.message = string("AI picked {0}: {1}, You had {2} ", friendlyName[0],aiNum,playerStatNum);
	}
	


    if (playerStatNum > aiNum) {
        global.aiLives -= 1;
		addCard(global.playerHand, global.aiHand);
		addCard(global.playerHand, global.playerHand);

    } else {
        global.playerLives -= 1;
		addCard(global.aiHand, global.playerHand);
		addCard(global.aiHand,global.aiHand);
    }



    global.playerTurn = !player;



    show_debug_message("playerHandLength {0}", array_length(global.playerHand));
    show_debug_message("aiHandLength {0}", array_length(global.aiHand));

    if (array_length(global.playerHand) > 0) {
        instance_create_layer(427, 176, "playerCard", global.playerHand[0]);
    }

    if (array_length(global.aiHand) > 0) {
        instance_create_layer(1131, 176, "aiCard", global.aiHand[0]);
    }

	audio_play_sound(mExplosion, 1000, false);


}
