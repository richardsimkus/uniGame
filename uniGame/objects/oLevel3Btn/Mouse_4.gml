/// @description If mouse released

image_index = 1;

if (global.mapLevel == 3){
	audio_play_sound(mClickMenu, 1000, false);
	TransitionStart(rLevel3, sqFadeOut, sqFadeIn);
}