/// @description for closing the control page

if (keyboard_check_pressed(vk_space)){
	instance_destroy();
	layer_set_visible("buttons",true);
layer_set_visible("AIStatLevel", true);
}