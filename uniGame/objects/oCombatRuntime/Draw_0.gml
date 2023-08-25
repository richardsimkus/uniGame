/// @description Insert description here
// You can write your code in this editor

draw_text(735,109,global.message);
draw_set_font(fCardCount);
draw_text(20, 600, "Card Count: "+ string(array_length(global.playerHand)));

draw_set_font(fMainFont);
draw_text(oPlayerHealth.x + 145, oPlayerHealth.y + 60, "Your Health");
draw_text(oAIHealth.x + 45, oAIHealth.y + 60, "Enemy Health")
