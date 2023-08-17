if (global.playerLives + 2 >= 12){
	global.playerLives = 12;
} else {
	global.playerLives += 2;	
}

if (global.mapLevel == 6){
	TransitionStart(rCreditScreen, sqFadeOut, sqFadeIn);
	global.moneyText = "";
} else {
	TransitionStart(rWorldMap, sqFadeOut, sqFadeIn);
	global.moneyText = $"Money: $ {global.playerMoney}";
}
