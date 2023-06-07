/// Create Event (oCombatRuntime)

global.aiLives = 6;

global.deck = []; 
global.playerHand = [];
global.aiHand = [];
global.inCombat = true;
global.playerTurn = true;
global.aiThinkTimer = room_speed * 2;

buildDeck(); // Calls script to populate the deck
dealCards();

increasedMapLevel = false;
increasedMoney = false;