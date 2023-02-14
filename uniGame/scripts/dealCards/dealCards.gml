// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dealCards(){
	//shuffleDeck();
	for (card = 0; card < array_length(global.deck); card++;){
		if (card % 2 == 0){
			array_push(global.playerHand,global.deck[card]);
		} else {
			array_push(global.aiHand,global.deck[card]);
		}
	}
	
	for (card = 0; card < array_length(global.playerHand); card++;){
		instance_create_layer(880,700,"playerCards",global.playerHand[card]);
	}
}

function redrawHand(){
	
	for (card = 0; card < array_length(global.playerHand); card++;){
		instance_create_layer(880,700,"playerCards",global.playerHand[card]);
	}
}