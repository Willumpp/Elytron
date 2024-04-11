/// @description Shooting

var object = instance_create_depth(x,y,depth+1,obj_AssaultTurretBullet); //Create bullet
object.direction = direction + random_range(-10,10); //Set rotation of bullet
object.image_angle = object.direction - 90;
audio_play_sound(snd_MachinegunFire,0,false);
alarm[0] = 60 * turretShootingSpeed; //Repeat