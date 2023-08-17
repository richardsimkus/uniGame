global.playerMoney += (global.mapLevel - 1) * 100;

if (global.mapLevel == 6){
	TransitionStart(rCreditScreen, sqFadeOut, sqFadeIn);
	global.moneyText = "";
} else {
	TransitionStart(rWorldMap, sqFadeOut, sqFadeIn);
	global.moneyText = $"Money: $ {global.playerMoney}";
}

