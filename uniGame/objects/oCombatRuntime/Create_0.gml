room_speed = 60; //60fps

global.deck = []; 
global.playerHand = [];
global.aiHand = [];
global.inCombat = true;
global.playerTurn = true;

buildDeck(); //calls script to populate the above deck
dealCards();
//createCombatUI();