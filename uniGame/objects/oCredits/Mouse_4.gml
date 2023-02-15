/// @description Access settings menu

var target = rMainMenu;
if (room == rMainMenu) target = rCreditScreen;

TransitionStart(target, sqFadeOut, sqFadeIn);