// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createCombatUI(){
	
	cardStats = [oSizeButton, oSmartsButton, oSpeechButton, oSpeedButton, oStrengthButton];
	
	for (cardStat = 0; cardStat < array_length(cardStats); cardStat++;){
		cardStatX = 480+(sprite_get_width(oSizeButton)+(cardStat*160))
		cardStatY = 960
		instance_create_layer(cardStatX,cardStatY,"playerCards",cardStats[cardStat]);
	}
}

function chooseStat(player, stat){
	if (player) {
		
		aiNum = variable_instance_get(global.aiHand[0],stat);
		playerStatNum = variable_instance_get(global.playerHand[0],stat);
		
		
		if (aiNum > playerStatNum){
		show_message("AI WINS, AI HAD " + string(aiNum) + " and player had " + string(playerStatNum));
		addCard(global.aiHand, global.aiHand); //shifts top card to back
		addCard(global.aiHand, global.playerHand); //shifts to ai hand, from player hand
		
		}; 
		
		else {
		show_message("PLAYER WINS, PLAYER HAD " + string(playerStatNum) + " and AI had " + string(aiNum));
		
		addCard(global.playerHand,global.playerHand); //shifts top card to back
		addCard(global.playerHand,global.aiHand); //shifts to player hand, from ai hand

		};
		
		global.playerTurn = false;
		instance_destroy(global.playerHand[0]);
		instance_create_layer(880,700,"playerCards", global.playerHand[0]);
		
	}
}