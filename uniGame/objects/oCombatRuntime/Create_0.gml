/// Create Event (oCombatRuntime)
room_speed = 60; // 60fps

global.playerLives = 6;
global.aiLives = 6;

global.deck = []; 
global.playerHand = [];
global.aiHand = [];
global.inCombat = true;
global.playerTurn = true;
global.aiThinkTimer = room_speed * 4;

buildDeck(); // Calls script to populate the deck
dealCards();

