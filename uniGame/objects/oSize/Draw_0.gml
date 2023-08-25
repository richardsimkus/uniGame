draw_set_font(fMainFont);
if (array_length(global.playerHand) > 0){
	draw_text(oSize.x, oSize.y, string(global.playerHand[0].size_stat));
}
	