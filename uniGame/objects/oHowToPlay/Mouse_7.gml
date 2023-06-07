/// @description Controls pop up

sprite_index = sControls
image_index = 1;
image_speed = 0;

// Set the position and size of the pop-up window
x = room_width / 2; // Adjust the X position as needed
y = room_height / 2; // Adjust the Y position as needed

draw_sprite(sprite_index, 1, x - sprite_width, y - sprite_height);

//To close control page
if (keyboard_check_pressed(vk_space))
{
    instance_destroy();
}