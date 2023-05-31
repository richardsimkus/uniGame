/// @description Close game

with(all) instance_destroy();

audio_play_sound(mClickMenu, 1000, false);

var target = rWorldMap;
if (room == rWorldMap) target = rMainMenu;


TransitionStart(target, sqFadeOut, sqFadeIn);