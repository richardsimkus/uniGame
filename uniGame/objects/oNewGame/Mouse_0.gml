with(all) instance_destroy();

audio_play_sound(mClickMenu, 1000, false);

var target = rMainMenu;
if (room == rMainMenu) target = rLevel1;

TransitionStart(target, sqFadeOut, sqFadeIn);