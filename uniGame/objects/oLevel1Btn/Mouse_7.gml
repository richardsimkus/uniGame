/// @description If mouse released

image_index = 1;
image_speed = 0;


audio_play_sound(mClickMenu, 1000, false);

var target = rWorldMap;
if (room == rWorldMap) target = rLevel1;


TransitionStart(target, sqFadeOut, sqFadeIn);