/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMainFont);
if (array_length(global.aiHand) > 0){
	draw_text(oStrengthAI.x, oStrengthAI.y, "?"); //string(global.aiHand[0].strength_stat));
}