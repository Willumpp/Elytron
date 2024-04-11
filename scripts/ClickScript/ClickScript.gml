if (mouse_check_button_pressed(mb_left) and visible == true) {
	if (instance_position(mouse_x,mouse_y,id)) {
		return true;
	}
	else { return false; }
}