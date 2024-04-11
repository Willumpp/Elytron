//Horizontal collision
if (place_meeting(x+hspeed,y,Collidables))
{
	while (place_meeting(x+sign(hspeed),y,Collidables) == false) {
		x += sign(hspeed)
	}
	hspeed = 0;
}

//Vertical collision
if (place_meeting(x,y+vspeed,Collidables))
{
	while (place_meeting(x,y+sign(vspeed),Collidables) == false) {
		y += sign(vspeed);
	}
	vspeed = 0;
}