if (global.playerLives + 2 >= 12){
	global.playerLives = 12;
} else {
	global.playerLives += 2;	
}

TransitionStart(rWorldMap, sqFadeOut, sqFadeIn);