draw_set_valign(fa_middle);
draw_set_font(fPlayerName);
text = "Welcome to your adventure " + global.playerName + "!";

draw_text(x-(string_width(text)/2),y,text);