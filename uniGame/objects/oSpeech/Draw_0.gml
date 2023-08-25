draw_set_font(fMainFont);
if (array_length(global.playerHand) > 0){
	draw_text(oSpeech.x, oSpeech.y, string(global.playerHand[0].speech_stat));
}
