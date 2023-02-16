/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMainFont);
//draw_text(732, 500, string(global.playerHand[0].size_stat));
if (array_length(global.playerHand) > 0){
	draw_text(oSize.x, oSize.y, string(global.playerHand[0].size_stat));
}
	