// Script builds starting deck and shuffles the deck

function buildDeck(){
	
		array_set(global.player_deck,0,oCard1);
		array_set(global.player_deck,1,oCard2);
		array_set(global.player_deck,2,oCard3);
		array_set(global.player_deck,3,oCard4);
		array_set(global.player_deck,4,oCard5);
		array_set(global.player_deck,5,oCard6);
		array_set(global.player_deck,6,oCard7);
		array_set(global.player_deck,7,oCard8);
		array_set(global.player_deck,8,oCard9);
		array_set(global.player_deck,9,oCard10);
		
		shuffleDeck();
		
		show_debug_message("Game deck {0}", global.player_deck);

}