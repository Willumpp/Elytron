/// @description Attack timer

var object = instance_place(x+sprite_width,y,obj_MiddleWall); //Get the object it is attacking
var turret = instance_place(x+sprite_width,y,Turrets); 

if (place_meeting(x+sprite_width,y,obj_MiddleWall)) { 
	object.wallHealth -= beetleDamage; //Deal damage
}
if (place_meeting(x+sprite_width,y,Turrets)) { 
	turret.turretHealth -= beetleDamage; //Deal damage
}
if (place_meeting(x+sprite_width,y,obj_Shield)) { 
	obj_ShieldHealthText.shieldHealth -= 1; //Deal damage
}
alarm[0] = 60;