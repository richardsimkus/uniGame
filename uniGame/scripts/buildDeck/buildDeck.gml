// Script builds starting deck and shuffles the deck

function buildDeck(){
	
		for (card = 0; card <= 9; card++;) {
			array_push(global.deck,asset_get_index("oCard"+string(card+1)))
		}
		
		// shuffleDeck();
		
		show_debug_message("Game deck {0}", global.deck);
}
