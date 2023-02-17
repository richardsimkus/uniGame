/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMainFont);
if (array_length(global.aiHand) > 0){
	draw_text(oSizeAI.x, oSizeAI.y, "?"); //string(global.aiHand[0].size_stat));
}