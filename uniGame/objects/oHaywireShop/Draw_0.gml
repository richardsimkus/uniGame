/// Draw Event (oHaywireShop)
draw_self(); // Draw the sHaywireItem sprite

// If the mouse is over the object, draw the tooltip (sToolTip frame 2) at a fixed position on the screen
if (mouse_over_item) {
    draw_sprite_ext(sToolTip, global.tooltip_frame, 300, 40, 1, 1, 0, c_white, 1);
}
