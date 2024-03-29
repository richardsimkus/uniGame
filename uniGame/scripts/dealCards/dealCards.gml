// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dealCards(){
	shuffleDeck();
	for (card = 0; card < array_length(global.deck); card++;){
		if (card % 2 == 0){
			array_push(global.playerHand,global.deck[card]);
		} else {
			array_push(global.aiHand,global.deck[card]);
		}
	}
	show_debug_message("AI Hand {0}", global.aiHand);
	instance_create_layer(427,176,"playerCard", global.playerHand[0]);
	instance_create_layer(1131,176,"aiCard", global.aiHand[0]);
}