//Executes runtime code when room is loaded to initialise stuff

room_speed = 60; //60fps

global.player_deck = array_create(5,noone); //creates list for players deck
global.player_hand = array_create(5,noone);
global.ai_hand = array_create(5,noone);

buildDeck(); //calls script to populate the above deck
drawCards(5); //draws 5 cards for the player
