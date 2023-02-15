// build player hand
function drawCards(num){
	for(i = 0; i < num; i++)
	{
		if(array_length(global.player_deck) > 0){
			card_drawn = array_first(global.player_deck);
			if(global.player_hand[i] == noone)
			{
				global.player_hand[i] = card_drawn;
				global.player_hand[i] = instance_create_layer(629,467,"Cards", global.player_hand[i]);
				global.player_hand[i].sprite_index = card_drawn.sprite_index;
			}
			array_delete(global.player_deck,0,1);
			}
			else 
			{
				break;
			}
	}
	
	//build ai hand with remaining cards from deck
	noRemaningCards = array_length(global.player_deck);
	
	for(i = 0; i < noRemaningCards; i++){
		card_drawn = array_first(global.player_deck);
		
		global.ai_hand[i] = card_drawn;
		global.ai_hand[i] = instance_create_layer(1332,467,"Cards", global.ai_hand[i]);
		global.ai_hand[i].sprite_index = card_drawn.sprite_index;
		
		array_delete(global.player_deck, 0, 1);
	}
}	
	