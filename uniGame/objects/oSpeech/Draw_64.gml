/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMainFont);
if (array_length(global.playerHand) > 0){
	draw_text(oSpeech.x, oSpeech.y, string(global.playerHand[0].speech_stat));
}

	