/// @description Turret Step

//Place turret
if (hasPlaced == false) {
	obj_Player.canShoot = false;
	x = mouse_x;
	y = mouse_y;
	if (ClickScript() and x > 600 and place_meeting(x,y,Collidables) == false) {
		turretHead = instance_create_depth(x,y,depth-20,obj_GunTurretHead); //Create head
		hasPlaced = true;
		obj_Player.canShoot = true;
	}
}

//Health
if (turretHealth <= 0) { //Destroy self when health reaches 0
	instance_destroy(id); //Destroy self
	instance_destroy(turretHead.id); //Destroy head
}
