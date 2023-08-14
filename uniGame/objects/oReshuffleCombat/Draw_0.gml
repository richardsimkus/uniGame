/// Draw Event (oReshuffleShop)
draw_self(); // Draw the sReshuffleItem sprite

// If the mouse is over the object, draw the tooltip (sToolTip frame 1) at a fixed position on the screen
if (mouse_over_item) {
    draw_sprite_ext(sToolTip, global.tooltip_frame, 320, 40, 1, 1, 0, c_white, 1);
}
