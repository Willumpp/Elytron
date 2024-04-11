/// @description Shooting

var object = instance_create_depth(x,y,depth+1,obj_LaserTurretBullet); //Create bullet
object.direction = direction; //Set rotation of bullet
object.image_angle = direction - 90;
audio_play_sound(snd_LaserTurretFire,0,false);
alarm[0] = 60 * turretShootingSpeed; //Repeat