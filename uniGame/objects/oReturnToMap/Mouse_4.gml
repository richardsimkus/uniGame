/// @description return to map

with(all) instance_destroy();

audio_play_sound(mClickMenu, 1000, false);

var target = rLevel1;
if (room == rLevel1) target = rWorldMap;


TransitionStart(target, sqFadeOut, sqFadeIn);