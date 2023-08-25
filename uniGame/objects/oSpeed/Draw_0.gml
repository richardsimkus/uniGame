draw_set_font(fMainFont);
if (array_length(global.playerHand) > 0){
	draw_text(oSpeed.x, oSpeed.y, string(global.playerHand[0].speed_stat));
}
