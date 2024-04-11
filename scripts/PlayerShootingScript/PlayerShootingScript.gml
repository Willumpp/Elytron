var bulletRotation = argument0;

if (weapon == 1) { //Pistol
	var bullet = instance_create_depth(x,y,-15,obj_PlayerBullet); //Create bullet
	audio_play_sound(snd_PistolFire,0,false);
	bullet.bulletSpeed = 10; //Set speed
	bullet.direction = bulletRotation; //Set rotation
	bullet.image_angle = bulletRotation - 90; //Face forwards
}
else if (weapon == 3 and (ammo - 1) >= 0) { //Machinegun
	var bullet = instance_create_depth(x,y,-15,obj_PlayerBullet); //Create bullet
	audio_play_sound(snd_MachinegunFire,0,false);
	ammo -= 1; 
	bullet.bulletSpeed = 10; //Set speed
	bullet.direction = bulletRotation; //Set rotation
	bullet.image_angle = bulletRotation - 90; //Face forwards
}

else if (weapon == 2 and (ammo - shotgunBulletNum) >= 0) { //Shotgun
	var shotgunAngle = shotgunSpread / shotgunBulletNum; //Find bullet per angle
	ammo -= shotgunBulletNum;
	audio_play_sound(snd_ShotgunFire,0,false);
	for (i = 1; i <= shotgunBulletNum; i++) {
		var bullet = instance_create_depth(x,y,-15,obj_PlayerBullet); //Create x amount of bullets every y degrees
		bullet.bulletSpeed = 10;
		bullet.direction = bulletRotation -(shotgunSpread/2) + (i * shotgunAngle); //Set rotation
		bullet.image_angle = bulletRotation - 90;
	}
}
else if (weapon == 4) { //Admin gun
	var shotgunAngle = 60 / 6; //Find bullet per angle
	for (i = 1; i <= 6; i++) {
		var bullet = instance_create_depth(x,y,-15,obj_PlayerBullet); //Create x amount of bullets every y degrees
		bullet.bulletSpeed = 10;
		bullet.direction = bulletRotation -(60/2) + (i * shotgunAngle); //Set rotation
		bullet.image_angle = bullet.direction - 90;
	}
}