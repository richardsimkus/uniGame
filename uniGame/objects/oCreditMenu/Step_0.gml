y -= scroll_speed;
if (y <= -text_height) {
  room_goto(rMainMenu);
}

if(mouse_check_button_pressed(mb_left)){

	TransitionStart(rMainMenu, sqFadeOut, sqFadeIn);	
}