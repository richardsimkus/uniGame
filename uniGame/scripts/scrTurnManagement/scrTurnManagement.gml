// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createCombatUI(){
	
	cardStats = [oSizeButton, oSmartsButton, oSpeechButton, oSpeedButton, oStrengthButton];
	
	for (cardStat = 0; cardStat < array_length(cardStats); cardStat++;){
		cardStatX = 480+(sprite_get_width(oSizeButton)+(cardStat*160))
		cardStatY = 960
		instance_create_layer(cardStatX,cardStatY,"playerButtons",cardStats[cardStat]);
	}
}

function chooseStat(player, stat){
	aiNum = variable_instance_get(global.aiHand[0],stat);
	playerStatNum = variable_instance_get(global.playerHand[0],stat);
	if (instance_exists(global.playerHand[0])){
			instance_destroy(global.playerHand[0]);
		}
		if (instance_exists(global.aiHand[0])){
			instance_destroy(global.aiHand[0]);
		}
	if (player) {

		
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
		show_message("AI WINS, AI HAD " + string(aiNum) + " and player had " + string(playerStatNum));
		addCard(global.aiHand,global.playerHand);
		addCard(global.aiHand,global.aiHand);
		} else {
		show_message("PLAYER WINS, PLAYER HAD " + string(playerStatNum) + " and AI had " + string(aiNum));
		addCard(global.playerHand,global.aiHand);
		addCard(global.playerHand,global.playerHand);
		}
		global.playerTurn = true;

	}
	show_debug_message("playerHandLength {0}",array_length(global.playerHand));
	show_debug_message("aiHandLength {0}",array_length(global.aiHand));
	if (array_length(global.playerHand) > 0){
		instance_create_layer(448,224,"playerCard", global.playerHand[0]);
	}
	if (array_length(global.aiHand) > 0){
		instance_create_layer(1152,224,"aiCard", global.aiHand[0]);
	}
}