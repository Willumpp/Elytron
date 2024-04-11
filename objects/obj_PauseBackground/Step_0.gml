/// @description Pause background step
// When paused
if (keyboard_check_pressed(ord("P"))) {
	hasPaused = !hasPaused
	if (hasPaused == false) {
		instance_deactivate_all(true);
		instance_activate_object(obj_PauseBackground);
		obj_PauseBackground.visible = true;
	}
	if (hasPaused == true) {
		instance_activate_all();
		obj_PauseBackground.visible = false;
	}
}

